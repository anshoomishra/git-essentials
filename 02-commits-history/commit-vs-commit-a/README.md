# git commit vs git commit -a

## 📋 Quick Comparison

| Aspect | `git commit` | `git commit -a` |
|--------|-----------|-----------|
| **What commits** | Only staged files | All modified tracked files |
| **Requires `git add`** | Yes | No |
| **Untracked files** | Ignored | Ignored |
| **Most common** | Yes | Sometimes |
| **When to use** | Selective commits | Quick commits of tracked files |

## 🧠 Mental Model

- **`git commit`** = Commit only what's in the staging area
- **`git commit -a`** = Auto-stage all tracked files, then commit

## 📖 Detailed Explanation

### git commit

Commits only the files you've explicitly staged with `git add`.

```bash
git add file1.js file2.js  # Stage specific files
git commit -m "Update files"
```

### git commit -a

Automatically stages all modified tracked files and commits them in one step.

```bash
git commit -a -m "Update all tracked files"
# Short form:
git commit -am "Update all tracked files"
```

## ⚠️ Important Notes

- `git commit -a` does NOT stage untracked files
- `git commit -a` only works for tracked files (previously committed)
- New files must be staged manually with `git add`

## 🔄 Comparison Table

| Scenario | Command | Notes |
|----------|---------|-------|
| Selective commit | `git commit` | Precise, staged files only |
| Commit all tracked | `git commit -a` | Quick, all modified tracked files |
| Include new files | `git add .` then `git commit` | Required for untracked files |

---

[← Back to Section 2](../README.md) | [→ Next Topic](../log-vs-reflog/README.md)
