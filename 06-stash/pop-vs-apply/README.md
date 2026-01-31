# stash pop vs stash apply

## 📋 Quick Comparison

| Aspect | `stash pop` | `stash apply` |
|--------|-----------|-----------|
| **Action** | Restore + delete | Restore only |
| **Stash list** | Removed | Kept |
| **Safe** | Can fail if conflicts | Same |
| **Use case** | Normal restore | Keep copy in stash |

## 📖 Usage

```bash
git stash pop          # Use once then discard
git stash apply        # Keep in stash
git stash drop         # Delete stash manually
```

---

[← Back to Section 6](../README.md) | [→ Next Topic](../stash-vs-wip/README.md)
