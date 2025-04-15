#!/bin/bash

echo "🔁 Starting auto commit script..."

# No need to cd since we're already in the repo folder

if [[ -n $(git status -s) ]]; then
  git add .
  git commit -m "🤖 Auto commit on $(date '+%Y-%m-%d %H:%M:%S')"
  git push origin main
  echo "🚀 Changes pushed to GitHub!"
else
  echo "🟢 No changes to commit."
fi
