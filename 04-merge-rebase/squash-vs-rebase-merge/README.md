# squash merge vs rebase merge

## 📋 Quick Comparison

| Aspect | Squash | Rebase |
|--------|--------|--------|
| **Commits** | All into one | Preserved |
| **History** | Flattened | Linear |
| **Merge commit** | Yes (but squashed) | No |
| **History size** | Smaller | Larger |
| **Granularity** | Lost | Preserved |

## 📖 Usage

```bash
git merge --squash branch          # Squash merge
git rebase main then git merge     # Rebase merge
```

---

[← Back to Section 4](../README.md) | [→ Next Topic](../interactive-rebase/README.md)
