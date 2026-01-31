# git checkout vs git restore

## 📋 Quick Comparison

| Aspect | `git checkout` | `git restore` |
|--------|-----------|-----------|
| **Purpose** | Multi-purpose | Restore files only |
| **Discard changes** | Yes | Yes |
| **Switch branches** | Yes | No |
| **Newer** | No | Yes (Git 2.23+) |
| **Recommended** | For branches | For files |

## 📖 Usage

**Both discard changes to a file:**
```bash
git checkout -- file.js
git restore file.js  # Newer, clearer
```

---

[← Back to Section 5](../README.md) | [→ Next Topic](../clean-vs-reset-hard/README.md)
