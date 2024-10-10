#!/bin/bash

echo " ~^ Starting auto commit script..."

# Skip 'cd' if you're already in the repo folder
if [[ -n $(git status -s) ]]; then
    git add .

    for i in {0..4}; do
        # Generate a unique backdated timestamp for each commit
        FIXED_DATE=$(date -d "2024-10-10 11:22:30 + $i minutes" +"%Y-%m-%dT%H:%M:%S")
        
        GIT_COMMITTER_DATE="$FIXED_DATE" \
        git commit --date="$FIXED_DATE" -m " ~^ Auto commit #$((i+1)) with backdated timestamp"
    done

    git push origin main
    echo " ~^ 5 auto commits pushed to GitHub with backdated timestamps!"
else
    echo " M~ No changes to commit."
fi


