# git cherry-pick vs git merge

## 📋 Quick Comparison

| Aspect | `git cherry-pick` | `git merge` |
|--------|-----------|-----------|
| **What** | Select specific commits | Combine branches |
| **Commits** | One or more | All commits |
| **Creates new commits** | Yes | Usually (depends) |
| **Use case** | Selective application | Full merge |
| **Example** | Backport a fix | Feature complete |

## 📖 Usage

```bash
# Cherry-pick one commit
git cherry-pick <commit-hash>

# Cherry-pick a range
git cherry-pick <hash1>..<hash2>

# Merge entire branch
git merge other-branch
```

---

[← Back to Section 8](../README.md) | [→ Next Topic](../force-push-vs-push/README.md)
