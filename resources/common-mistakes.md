# Common Git Mistakes & Recovery

Learn from common mistakes and how to recover from them.

## 🚨 Critical Mistakes and Recovery

### 1. Pushed to Wrong Branch

**Mistake:** Pushed commits to `main` instead of a feature branch

**Recovery:**
```bash
git log main -n 5  # Find the commit hash before your push
git reset --soft <correct-commit-hash>
git reset --hard origin/main  # Reset main to remote state
git checkout -b feature-branch
git reset --soft <your-commit-hash>
git commit -m "Your message"
git push -u origin feature-branch
```

### 2. Accidentally Deleted Branch

**Mistake:** Deleted a branch with `git branch -D feature`

**Recovery:**
```bash
git reflog  # Find the branch pointer
git checkout -b feature <commit-hash-from-reflog>
```

### 3. Wrong Commit Message

**Mistake:** Committed with wrong message

**Recovery (unpushed):**
```bash
git commit --amend -m "Correct message"
```

**Recovery (pushed):**
```bash
git revert <commit-hash>
git commit -m "Correct message with correct details"
```

### 4. Committed Sensitive Data

**Mistake:** Accidentally committed password or API key

**Recovery:**
```bash
# Remove from history
git filter-branch --tree-filter 'rm -f sensitive-file' HEAD

# Or use git filter-repo (better):
git filter-repo --path sensitive-file --invert-paths

# Force push (risky - notify team!)
git push -f
```

### 5. Merge Conflict Resolution Gone Wrong

**Mistake:** Resolved a merge conflict incorrectly

**Recovery:**
```bash
git merge --abort  # If still merging
# Or
git reset --hard <before-merge-commit>
```

### 6. Rebased Public History

**Mistake:** Did `git rebase` then pushed to shared branch

**Recovery:**
```bash
# Don't force push yet! Check with team
git push -f  # Only if team agrees

# Alternative - safer:
git revert <problem-commits>
```

## 💡 Prevention Tips

1. **Always pull before pushing** - `git pull` before `git push`
2. **Use feature branches** - Never work directly on `main`
3. **Review before committing** - `git diff` before `git commit`
4. **Don't force push to shared branches** - ⚠️ Very dangerous
5. **Use `.gitignore`** - Prevent accidental commits of sensitive files
6. **Set up pre-commit hooks** - Automate quality checks

## 🔍 Useful Investigation Commands

```bash
# Who changed this line?
git blame filename

# What commits changed this file?
git log filename

# See what changed in a commit
git show <commit-hash>

# Track when something was deleted
git log --diff-filter=D -- filename
```

## 🆘 Last Resort Recovery

```bash
# See all actions you've done
git reflog

# Recover any commit ever made
git checkout -b recovery <reflog-hash>

# Git garbage collection only runs after 90 days
# So most "lost" commits can be recovered
```

---

[← Back to Resources](README.md)
