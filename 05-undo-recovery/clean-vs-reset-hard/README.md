# git clean vs git reset --hard

## 📋 Quick Comparison

| Aspect | `git clean` | `git reset --hard` |
|--------|-----------|-----------|
| **Removes** | Untracked files | Changes to tracked files |
| **Tracked files** | No | Yes |
| **Safe** | Less (can lose work) | Less (can lose work) |
| **Use case** | Clean workspace | Undo commits |

## 📖 Usage

```bash
git clean -fd            # Remove untracked files and directories
git reset --hard HEAD   # Discard all changes to tracked files
```

---

[← Back to Section 5](../README.md) | [→ Next Section: Stash](../../06-stash/README.md)
