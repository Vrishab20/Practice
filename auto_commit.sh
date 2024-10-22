#!/bin/bash

echo "🔁 Starting auto commit script..."

# Skip 'cd' if you're already in the repo folder

if [[ -n $(git status -s) ]]; then
  git add .

  FIXED_DATE="2024-10-22T19:22:30"
  GIT_COMMITTER_DATE="$FIXED_DATE" git commit --date="$FIXED_DATE" -m "🤖 Auto commit on 2025-04-13 22:47:30"

  git push origin main
  echo "🚀 Changes pushed to GitHub with fixed backdated commit!"
else
  echo "🟢 No changes to commit."
fi

