# tracked vs untracked files

## 📋 Quick Comparison

| Aspect | Tracked | Untracked |
|--------|---------|-----------|
| **In Git history** | Yes | No |
| **Added to repo** | Yes, via `git add` | Never committed |
| **Appears in commits** | Yes | No |
| **git status shows it** | Yes | Yes (different section) |
| **Ignored by .gitignore** | No | Yes (if matched) |

## 🧠 Mental Model

- **Tracked files** = Files Git is actively watching and versioning
- **Untracked files** = Files Git knows about but isn't tracking

## 📖 Detailed Explanation

### Tracked Files

Once you've added a file with `git add` and committed it, it becomes tracked. Git watches for changes and includes it in commits.

**How to make a file tracked:**
```bash
git add filename     # Stage it
git commit -m "msg"  # Now it's tracked
```

### Untracked Files

Files that exist in your working directory but have never been added to Git.

**Common untracked files:**
- New files you just created
- Build artifacts
- Temporary files
- Dependencies (node_modules, venv, etc.)

## 🔄 File States

```
Untracked → (git add) → Staged → (git commit) → Tracked
                                    ↓
                              (in repository)
```

## 📝 Best Practice: .gitignore

Use `.gitignore` to prevent tracking unwanted files:

```
# .gitignore example
node_modules/
*.log
.env
dist/
```

---

[← Back to Section 1](../README.md) | [→ Next Section: Commits & History](../../02-commits-history/README.md)
