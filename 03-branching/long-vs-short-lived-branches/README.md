# Long-lived vs Short-lived Branches

Understanding different branch lifecycle strategies.

## 📋 Quick Comparison

| Aspect | Long-lived | Short-lived |
|--------|-----------|-----------|
| **Duration** | Weeks/months/years | Days/hours |
| **Examples** | main, develop, staging | feature/*, hotfix/* |
| **Rebase** | Never | Yes (safe) |
| **Merge** | Via PR, careful review | Regular merges |
| **History** | Immutable | Can rewrite |

## 🧠 Mental Model

- **Long-lived** = Permanent highways (main, develop)
- **Short-lived** = Temporary roads (feature branches)

## 📖 Key Differences

### Long-lived Branches
- main, develop, release branches
- Shared by entire team
- Strict control over changes
- Code review mandatory
- Never force push

### Short-lived Branches
- Feature branches for specific work
- Personal/small team
- Can rebase safely
- Can be force pushed
- Deleted after merge

## 💡 Best Practices

**Long-lived branches:**
- Protect from force pushes
- Require code reviews
- Use CI/CD checks

**Short-lived branches:**
- Rebase before merging (optional but clean)
- Keep focused and small
- Delete after merging

---

[← Back to Section 3](../README.md) | [→ Next Section: Merge & Rebase](../../04-merge-rebase/README.md)
