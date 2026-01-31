# amend commit vs new commit

## 📋 Quick Comparison

| Aspect | Amend | New Commit |
|--------|-------|-----------|
| **Command** | `git commit --amend` | `git commit` |
| **Changes history** | Yes | No |
| **Rewrites commit** | Yes | No |
| **When to use** | Fix recent mistake | Normal commits |
| **On shared branch** | ⚠️ Risky | Safe |
| **Commit hash** | Changes | New hash |

## 🧠 Mental Model

- **Amend** = Edit the last commit
- **New commit** = Add another layer on top

## 📖 Detailed Explanation

### Amend a Commit

Fix the last commit without creating a new one.

```bash
# Made a typo in commit message?
git commit --amend -m "Corrected message"

# Forgot to add a file?
git add forgotten-file.js
git commit --amend --no-edit
```

### Create a New Commit

Simply make a new commit on top of the previous one.

```bash
git commit -m "New changes"
```

## ⚠️ Important Rules

1. **Only amend unpushed commits** - Amending pushed commits breaks collaboration
2. **Use on private branches** - Safe on feature branches
3. **Never amend shared history** - Use `git revert` on pushed commits

---

[← Back to Section 2](../README.md) | [→ Next Section: Branching](../../03-branching/README.md)
