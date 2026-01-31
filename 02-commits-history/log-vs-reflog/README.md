# git log vs git reflog

## 📋 Quick Comparison

| Aspect | `git log` | `git reflog` |
|--------|-----------|-----------|
| **Shows** | Commit history | All HEAD movements |
| **Includes** | Commits only | Resets, rebases, checkouts |
| **Permanent** | Yes (part of history) | Temporary (expires after 90 days) |
| **Linear** | Yes (follows branches) | Non-linear (chronological) |
| **Use case** | View project history | Recover lost commits |

## 🧠 Mental Model

- **`git log`** = Official history of your project
- **`git reflog`** = Security camera recording of your actions

## 🔄 Common Workflows

### View commit history
```bash
git log
git log --oneline
git log --graph --all --decorate
```

### Recover lost commits
```bash
git reflog
git checkout <commit-hash>
git reset --hard <commit-hash>
```

---

[← Back to Section 2](../README.md) | [→ Next Topic](../amend-vs-new-commit/README.md)
