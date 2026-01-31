# git reset --soft vs --mixed vs --hard

## 📋 Quick Comparison

| Mode | Changes | Staging | Working Dir |
|------|---------|---------|------------|
| **--soft** | Staged | ✓ Kept | ✓ Kept |
| **--mixed** | Unstaged | ✗ Cleared | ✓ Kept |
| **--hard** | Discarded | ✗ Cleared | ✗ Discarded |

## 🧠 Mental Model

- **--soft** = Keep everything, just move HEAD
- **--mixed** = Keep changes, unstage them
- **--hard** = Throw everything away

---

[← Back to Section 5](../README.md) | [→ Next Topic](../restore-vs-checkout/README.md)
