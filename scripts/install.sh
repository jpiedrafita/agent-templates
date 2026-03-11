#!/usr/bin/env bash
set -euo pipefail

# Usage:
#   ./install.sh --repo OWNER/REPO [--ref main] [--force] [--no-lessons]
#
# Example:
#   ./install.sh --repo jpiedrafita/agent-templates --ref main
#   ./install.sh --repo jpiedrafita/agent-templates --force

REPO=""
REF="main"
FORCE="0"
NO_LESSONS="0"

while [[ $# -gt 0 ]]; do
  case "$1" in
    --repo) REPO="$2"; shift 2 ;;
    --ref) REF="$2"; shift 2 ;;
    --force) FORCE="1"; shift ;;
    --no-lessons) NO_LESSONS="1"; shift ;;
    -h|--help)
      echo "Usage: $0 --repo OWNER/REPO [--ref main] [--force] [--no-lessons]"
      exit 0
      ;;
    *)
      echo "Unknown arg: $1" >&2
      exit 1
      ;;
  esac
done

if [[ -z "${REPO}" ]]; then
  echo "Missing --repo OWNER/REPO" >&2
  exit 1
fi

if [[ ! -d ".git" ]]; then
  echo "Warning: no .git directory found. Run this from a project root." >&2
fi

TMP_DIR="$(mktemp -d)"
cleanup() { rm -rf "${TMP_DIR}"; }
trap cleanup EXIT

ARCHIVE_URL="https://github.com/${REPO}/archive/refs/heads/${REF}.tar.gz"

echo "Downloading template: ${ARCHIVE_URL}"
curl -fsSL "${ARCHIVE_URL}" | tar -xz -C "${TMP_DIR}"

TEMPLATE_DIR="$(find "${TMP_DIR}" -maxdepth 1 -type d -name "$(basename "${REPO}")-*" | head -n1)"
if [[ -z "${TEMPLATE_DIR}" ]]; then
  echo "Could not locate extracted template directory" >&2
  exit 1
fi

rsync_opts=(-a)
if [[ "${FORCE}" == "0" ]]; then
  rsync_opts+=(--ignore-existing)
fi

echo "Copying .github/"
mkdir -p .github
rsync "${rsync_opts[@]}" "${TEMPLATE_DIR}/.github/" "./.github/"

echo "Copying specs/"
mkdir -p specs
rsync "${rsync_opts[@]}" "${TEMPLATE_DIR}/specs/" "./specs/"

echo "Copying PROJECT.md"
rsync "${rsync_opts[@]}" "${TEMPLATE_DIR}/PROJECT.md" "./PROJECT.md"

if [[ "${NO_LESSONS}" == "0" ]]; then
  echo "Copying LESSONS_LEARNED.md"
  rsync "${rsync_opts[@]}" "${TEMPLATE_DIR}/LESSONS_LEARNED.md" "./LESSONS_LEARNED.md" || true
fi

echo
echo "Done."
echo "Next:"
echo "  - Open Copilot Chat and run: .github/prompts/onboard.prompt.md"
echo "  - Review git diff, then commit."