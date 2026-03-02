#!/usr/bin/env sh

# Configuration
DEVELOP_BRANCH="develop"
MAIN_BRANCH="main"

# Error handling function
exit_on_error() {
    echo "Error: $1" >&2
    exit 1
}

# Ensure we are in a git repository and on the develop branch
git rev-parse --is-inside-work-tree >/dev/null 2>&1 || exit_on_error "Not a git repository."
current_branch=$(git branch --show-current)
[ "$current_branch" != "$DEVELOP_BRANCH" ] && exit_on_error "You are not on the '$DEVELOP_BRANCH' branch."

# Get commit message
echo "Enter the commit message: "
read commit_message

# Add all changes and commit
git add -A || exit_on_error "Error during 'git add'."
git commit -m "$commit_message" || exit_on_error "Error during 'git commit'."

# Push to the develop branch
git push origin "$DEVELOP_BRANCH" || exit_on_error "Error during 'git push' on the $DEVELOP_BRANCH branch."

# Switch to main branch, fetch latest from develop, merge develop into main, and push
git checkout "$MAIN_BRANCH" || exit_on_error "Error during 'git checkout' on the $MAIN_BRANCH branch."
git fetch origin "$DEVELOP_BRANCH" || exit_on_error "Error during 'git fetch' from '$DEVELOP_BRANCH'."
git merge origin "$DEVELOP_BRANCH" || exit_on_error "Error during 'git merge' from '$DEVELOP_BRANCH' to '$MAIN_BRANCH'."
git push origin "$MAIN_BRANCH" || exit_on_error "Error during 'git push' on the $MAIN_BRANCH branch."

# Return to develop branch
git checkout "$DEVELOP_BRANCH" || exit_on_error "Error during 'git checkout' on the $DEVELOP_BRANCH branch."

echo "Workflow completed successfully!"