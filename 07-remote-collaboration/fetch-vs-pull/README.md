# git fetch vs git pull

## 📋 Quick Comparison

| Aspect | `git fetch` | `git pull` |
|--------|-----------|-----------|
| **Action** | Download updates | Download + merge/rebase |
| **Merges** | No | Yes (by default) |
| **Changes local** | Remote tracking branches only | Your branch |
| **Safe** | Yes | Depends on configuration |
| **When to use** | Inspect before merging | Regular updates |

## 🧠 Mental Model

- **Fetch** = Get the mail from mailbox (don't read it yet)
- **Pull** = Get the mail AND read it immediately

## 📖 Detailed Explanation

### git fetch

Downloads updates from remote but doesn't merge them.

```bash
git fetch origin
git fetch origin main
# Updates origin/main, but your local main is unchanged
```

### git pull

Equivalent to fetch + merge (or fetch + rebase).

```bash
git pull origin main
# Same as: git fetch origin main && git merge origin/main

# Configure to use rebase:
git pull --rebase
```

## 🔄 Safe Workflow

```bash
# 1. Fetch to see what's new
git fetch origin

# 2. Review changes
git diff main origin/main

# 3. Merge when ready
git merge origin/main
```

## 📊 Visual Diagrams

See detailed workflows in [diagrams.md](diagrams.md) including:
- Fetch vs pull comparison
- Fetch + merge process
- Fetch + rebase process
- Push scenarios
- Pull request workflow

---

[← Back to Section 7](../README.md) | [→ Next Topic](../fork-vs-clone/README.md)
