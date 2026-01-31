# Recovery Cheatsheet

Quick reference for recovering from Git mistakes.

## 🆘 Emergency Commands

| Situation | Command | Notes |
|-----------|---------|-------|
| Undo last unpushed commit | `git reset --soft HEAD~1` | Keeps changes staged |
| Undo last unpushed commit (discard changes) | `git reset --hard HEAD~1` | ⚠️ Destructive |
| Undo pushed commit (safely) | `git revert <hash>` | Creates new commit |
| Find lost commits | `git reflog` | Check history |
| Recover deleted branch | `git checkout -b name <reflog-hash>` | From reflog |
| Discard all local changes | `git reset --hard HEAD` | ⚠️ Destructive |
| Undo a merge | `git reset --hard HEAD~1` | Before pushing |
| Undo a rebase | `git reflog` then checkout | Rebase creates commits |
| Change last commit | `git commit --amend` | Before pushing |
| Undo git add | `git reset HEAD filename` | Unstage file |
| Discard changes to file | `git checkout -- filename` | Or `git restore` |

## 🔧 Investigation Commands

| Command | Purpose |
|---------|---------|
| `git reflog` | See all your recent actions |
| `git log -p` | See what changed in each commit |
| `git show <hash>` | See details of one commit |
| `git diff` | See current unstaged changes |
| `git diff --staged` | See staged changes |
| `git status` | Quick overview |

## 📋 Before/After Comparison

### I made a mistake locally (not pushed)
```bash
git status              # Check what's wrong
git reset --hard origin/branch  # Start over
```

### I made a mistake and already pushed
```bash
git revert <commit-hash>  # Safe way to undo
git push
```

### I don't know what I did wrong
```bash
git reflog              # See all recent actions
# Find the hash you want to go back to
git show <hash>         # Inspect that commit
git checkout <hash>     # Go back (detached HEAD)
git checkout -b recovery-branch  # Save it
```

## 🎯 The Golden Rule

**99% of "lost" work in Git can be recovered with `git reflog`.**

Git doesn't permanently delete anything for 90 days. The `reflog` is your safety net.

---

[← Back to Resources](README.md)
