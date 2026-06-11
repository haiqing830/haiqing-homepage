#!/bin/zsh
set -e

REPO="haiqing830/haiqing830.github.io"
SITE_URL="https://haiqing830.github.io/"
ROOT="$(cd "$(dirname "$0")" && pwd)"

cd "$ROOT"

if ! git rev-parse --git-dir >/dev/null 2>&1; then
  echo "Initializing git repository..."
  git init
  git branch -M main
fi

if ! git remote get-url origin >/dev/null 2>&1; then
  git remote add origin "https://github.com/${REPO}.git"
fi

echo "Committing latest changes..."
git add .
if ! git diff --cached --quiet; then
  git commit -m "Update academic homepage"
fi

echo ""
echo "Pushing to GitHub (this replaces the current ${REPO} site)..."
echo "If prompted, sign in to GitHub in the browser or enter a Personal Access Token."
echo ""

if command -v gh >/dev/null 2>&1; then
  gh auth status >/dev/null 2>&1 || gh auth login
  git push -u origin main --force
else
  git push -u origin main --force
fi

echo ""
echo "Deployed. GitHub Pages may take 1-3 minutes to update."
echo "Live site: ${SITE_URL}"
