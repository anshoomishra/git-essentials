# Checkout vs Switch

Understanding the newer way to switch branches.

## 📋 Quick Comparison

| Aspect | `git checkout` | `git switch` |
|--------|-----------|-----------|
| **Purpose** | Multi-purpose (many uses) | Switch branches only |
| **Newer** | No (older command) | Yes (Git 2.23+) |
| **Clear intent** | No (overloaded) | Yes (focused) |
| **Recommended** | Still widely used | Modern replacement |
| **Create + switch** | `git checkout -b` | `git switch -c` |

## 🧠 Mental Model

- **checkout** = Swiss army knife (does many things)
- **switch** = Specialized tool (switches branches only)

## 📖 Detailed Explanation

### git checkout

Multi-purpose command that can:
- Switch branches
- Discard changes
- Check out specific files
- Detach HEAD

```bash
git checkout main              # Switch to main
git checkout -b feature        # Create and switch
git checkout -- file.js        # Discard changes
```

### git switch

New, focused command specifically for switching branches.

```bash
git switch main                # Switch to main
git switch -c feature          # Create and switch
git switch -                   # Switch to previous branch
```

## 🎯 Recommendation

Use `git switch` for branch switching if your Git version supports it (2.23+). It's clearer about intent.

---

[← Back to Section 3](../README.md) | [→ Next Topic](../long-vs-short-lived-branches/README.md)
