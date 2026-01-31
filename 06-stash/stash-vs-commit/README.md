# git stash vs git commit

## 📋 Quick Comparison

| Aspect | `git stash` | `git commit` |
|--------|-----------|-----------|
| **Purpose** | Temporary save | Permanent save |
| **In history** | No | Yes |
| **Expires** | Yes (after 90 days) | No |
| **When to use** | Pause work | Save work |

## 📖 Usage

```bash
git stash              # Temporarily save changes
git stash pop          # Restore and delete
git commit -m "msg"    # Permanently save
```

---

[← Back to Section 6](../README.md) | [→ Next Topic](../pop-vs-apply/README.md)
