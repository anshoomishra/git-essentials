# git add vs git commit

## 📋 Quick Comparison

| Aspect | `git add` | `git commit` |
|--------|-----------|-----------|
| **Action** | Stage changes | Save changes to history |
| **Reversible** | Yes, `git reset` | Yes, `git revert` |
| **Creates commit** | No | Yes |
| **Scope** | Selected files | All staged changes |
| **When to use** | Before committing | When changes are complete |

## 🧠 Mental Model

- **`git add`** = Putting items in a shopping cart
- **`git commit`** = Checking out and paying for them

The staging area is your cart. Commit is the final purchase.

## 🔄 Workflow Example

```bash
# Make changes to files
echo "new content" > file.txt

# Stage the changes
git add file.txt

# Commit the staged changes
git commit -m "Add new feature"
```

---

[← Back to Section 2](../README.md) | [→ Next Topic](../commit-vs-commit-a/README.md)
