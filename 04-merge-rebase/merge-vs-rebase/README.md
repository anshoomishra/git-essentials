# git merge vs git rebase

## 📋 Quick Comparison

| Aspect | `git merge` | `git rebase` |
|--------|-----------|-----------|
| **Result** | Merge commit | Linear history |
| **Preserves history** | Yes, shows branching | Yes, rewrites history |
| **Shared branches** | Safe | ⚠️ Risky |
| **Readability** | Clear branch visualization | Clean, linear history |
| **Conflict resolution** | Once | Multiple times possible |
| **When to use** | Public/shared code | Private branches |

## 🧠 Mental Model

- **Merge** = Combining two rivers (visible junction)
- **Rebase** = Moving a building to a new foundation

## 📖 Detailed Explanation

### git merge

Combines two branches by creating a merge commit that ties them together.

```bash
git checkout main
git merge feature-branch
# Creates a merge commit
```

**Advantages:**
- Preserves all history
- Shows clear branching points
- Non-destructive
- Safe for shared branches

**Disadvantages:**
- Creates merge commits
- Can clutter history

### git rebase

Replays your branch's commits on top of another branch.

```bash
git checkout feature-branch
git rebase main
# Rewrites history - now linear
```

**Advantages:**
- Clean, linear history
- Easier to read
- Fewer commits

**Disadvantages:**
- Rewrites history
- Risky on shared branches
- Can cause collaboration issues

## ⚠️ Golden Rule

**Never rebase on shared/public branches.**

If your branch is only yours (local), rebasing is safe and preferred. Once pushed, treat history as immutable.

## 📊 Detailed Diagrams

See comprehensive visual explanations in [diagrams.md](diagrams.md) including:
- The diverged branches problem
- Step-by-step merge process
- Step-by-step rebase process
- History comparison (side-by-side)
- Decision tree and workflow examples

---

[← Back to Section 4](../README.md) | [→ Next Topic](../fast-forward-vs-non-ff/README.md)
