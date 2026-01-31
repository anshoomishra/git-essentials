#!/bin/bash

# git init vs git clone - Practical Examples
# This script demonstrates the difference between git init and git clone

echo "========================================"
echo "GIT INIT VS GIT CLONE - Examples"
echo "========================================"

# ===== PART 1: git init =====
echo ""
echo ">>> PART 1: Using git init (NEW Repository)"
echo ""

# Create a new directory
mkdir -p my-new-project
cd my-new-project

# Initialize it as a git repository
git init

# Check the status
git status

# Show that .git folder exists
echo ""
echo "Git initialized. Here's what was created:"
ls -la | grep .git

# Show the structure of .git
echo ""
echo "Inside .git directory:"
ls -la .git/

# ===== PART 2: git clone =====
echo ""
echo ""
echo ">>> PART 2: Using git clone (EXISTING Repository)"
echo ""

cd ..

# Clone a public repository
# Using a simple example repo
echo "Cloning a repository..."
# Note: Uncomment and modify with an actual repository
# git clone https://github.com/example/repo.git

# Show what gets created
echo ""
echo "After git clone, you get:"
echo "- Full project history"
echo "- All branches"
echo "- Remote 'origin' pre-configured"

# ===== PART 3: Comparison =====
echo ""
echo ""
echo ">>> PART 3: Comparing the Two"
echo ""

# Check config in initialized repo
echo "In git init repository, remotes are:"
cd my-new-project
git remote -v
echo "(Empty - no remote configured)"

echo ""
echo "In git clone repository, remotes would be:"
echo "origin    https://github.com/example/repo.git (fetch)"
echo "origin    https://github.com/example/repo.git (push)"

# ===== PART 4: When to use each =====
echo ""
echo ""
echo ">>> DECISION TREE"
echo ""
echo "Starting NEW code?"
echo "  └─> git init"
echo ""
echo "Contributing to EXISTING project?"
echo "  └─> git clone"
echo ""
echo "Setting up a project locally from scratch?"
echo "  └─> git init"
echo ""
echo "Want someone else's code on your machine?"
echo "  └─> git clone"

# ===== CLEANUP =====
echo ""
echo "Cleanup:"
cd ..
rm -rf my-new-project
echo "✓ Cleaned up temporary directory"
