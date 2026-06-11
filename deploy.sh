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
echo "=== Deploying new Minimal layout to GitHub Pages ==="
echo "Target: ${SITE_URL}"
echo "This replaces the old Jekyll theme with the jiaweizhou.me-style layout."
echo ""

# Prefer GitHub CLI for authentication (install: https://cli.github.com/)
if command -v gh >/dev/null 2>&1; then
  if ! gh auth status >/dev/null 2>&1; then
    echo "Opening GitHub login..."
    gh auth login
  fi
  gh auth setup-git
  git push -u origin main --force
else
  echo "Tip: install GitHub CLI for easier login: brew install gh"
  echo "Pushing via HTTPS (sign in if prompted)..."
  git push -u origin main --force
fi

echo ""
echo "Done! Wait 1-3 minutes, then open: ${SITE_URL}"
echo "You should see: left sidebar photo + 'Haiqing Xu 徐海晴' + ABOUT ME section."
