#!/usr/bin/env bash
# Creates the private GitHub repo "diff-bench" (first run) and pushes this folder.
set -euo pipefail
cd "$(dirname "$0")"
command -v gh >/dev/null || export PATH="$HOME/bin:$PATH"
gh auth status >/dev/null 2>&1 || { echo "Run 'gh auth login' first."; exit 1; }
[[ -d .git ]] || git init -q -b main
git add -A
git diff --cached --quiet || git commit -q -m "Update ($(date +%Y-%m-%d))"
if git remote get-url origin >/dev/null 2>&1; then
  git push -u origin main
else
  gh repo create diff-bench --private \
    --description "Compare two code snippets or API responses side by side, with beautify and syntax-error reporting" \
    --source=. --remote=origin --push
fi
echo "Done → $(gh repo view --json url -q .url)"
