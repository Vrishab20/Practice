#!/bin/bash

echo "🔁 Starting auto commit script..."

# No need to cd if already in the correct repo folder

if [[ -n $(git status -s) ]]; then
  git add .

  # Set a manual date
  GIT_COMMITTER_DATE="2025-04-13T22:47:30" git commit --date="2025-04-13T22:47:30" -m "🤖 Auto commit on 2025-04-13 22:47:30"

  git push origin main
  echo "🚀 Changes pushed to GitHub with backdated commit!"
else
  echo "🟢 No changes to commit."
fi

