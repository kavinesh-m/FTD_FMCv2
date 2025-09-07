# #!/bin/bash

# echo "Syncing with remote repository..."

# # Configure git to not open editor for pulls
# git config pull.rebase false
# git config merge.ff only

# # Fetch latest
# git fetch origin master

# # Stash local changes
# git stash

# # Pull with rebase to avoid merge commits
# git pull --rebase origin master

# # Apply stashed changes
# git stash pop 2>/dev/null

# # Add and commit
# git add .
# if ! git diff --staged --quiet; then
#     git commit -m "${1:-Update} - $(date +%Y%m%d_%H%M%S)"
# fi

# # Push
# git push origin master

# echo "Push complete!"

git fetch origin master
git stash
git pull --rebase origin master
git stash pop 2>/dev/null
git add .
git commit -m  "Initial commit"
git push -u origin master