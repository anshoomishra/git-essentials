# force push vs normal push

## 📋 Quick Comparison

| Aspect | Normal Push | Force Push |
|--------|-----------|-----------|
| **Action** | Push if no conflicts | Overwrite remote |
| **Safety** | Safe | ⚠️ Dangerous |
| **When allowed** | Always (if permissions) | Restricted |
| **Team impact** | None | High |
| **Use case** | Normal commits | Amend/rebase |

## 📖 Commands

```bash
git push                           # Normal push
git push -f                        # Force push
git push --force-with-lease        # Safer force push
```

## ⚠️ Critical Rules

1. **Never force push to shared branches** - Will break team workflow
2. **Only force push personal branches** - You own it
3. **Communicate before force pushing** - Tell team
4. **Use `--force-with-lease`** - Safer alternative to `-f`

---

[← Back to Section 8](../README.md) | [→ Next Topic](../monorepo-vs-multirepo/README.md)
