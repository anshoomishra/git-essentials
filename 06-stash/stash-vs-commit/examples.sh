#!/bin/bash

# examples.sh - Git Stash Examples
# Demonstrates git stash, pop, and apply commands

echo "========================================"
echo "GIT STASH - Examples"
echo "========================================"

# Note: These are demonstration examples
# Run in a test repository

echo ""
echo ">>> STASHING WORK"
echo ""
echo "# When you need to switch branches but have uncommitted changes:"
echo "git stash"
echo "# Your changes are saved temporarily"

echo ""
echo ">>> VIEWING STASHED CHANGES"
echo ""
echo "git stash list                # See all stashes"
echo "git stash show                # Show latest stash"
echo "git stash show stash@{0}      # Show specific stash"

echo ""
echo ">>> RESTORING STASHED WORK"
echo ""
echo "git stash pop                 # Restore and delete stash"
echo "git stash apply               # Restore but keep stash"

echo ""
echo ">>> MANAGING STASHES"
echo ""
echo "git stash drop                # Delete latest stash"
echo "git stash drop stash@{0}      # Delete specific stash"
echo "git stash clear               # Delete all stashes"

echo ""
echo ">>> STASHING SPECIFIC FILES"
echo ""
echo "git stash push -m 'message' file.js   # Stash specific file with message"
echo "git stash push -u                      # Include untracked files"

echo ""
echo ">>> PRACTICAL WORKFLOW"
echo ""
echo "1. Working on feature, urgent bug appears"
echo "2. git stash            # Save feature work"
echo "3. git checkout main    # Switch to main"
echo "4. git checkout -b hotfix  # Create hotfix"
echo "5. # Fix and commit"
echo "6. git checkout feature # Back to feature"
echo "7. git stash pop        # Restore work"
echo "8. Continue working"
