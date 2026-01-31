# origin vs upstream

## 📋 Quick Comparison

| Aspect | `origin` | `upstream` |
|--------|---------|-----------|
| **Source** | Your fork/clone | Original project |
| **Default** | Created automatically | Added manually |
| **Permission** | You can push | Usually can't push |
| **Use case** | Your work | Sync with project |

## 🧠 Mental Model

- **origin** = Your copy
- **upstream** = Original source

## 📖 Workflow Example

```bash
# Clone your fork (origin created automatically)
git clone https://github.com/yourname/project.git

# Add upstream reference
git remote add upstream https://github.com/original-owner/project.git

# Keep in sync
git fetch upstream
git merge upstream/main
```

---

[← Back to Section 7](../README.md) | [→ Next Topic](../pr-vs-merge/README.md)
