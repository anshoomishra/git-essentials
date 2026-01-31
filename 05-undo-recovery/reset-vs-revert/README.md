# git reset vs git revert

## 📋 Quick Comparison

| Aspect | `git reset` | `git revert` |
|--------|-----------|-----------|
| **Action** | Moves pointer back | Creates new commit undoing changes |
| **History** | Rewrites history | Preserves history |
| **Shared branches** | ⚠️ Dangerous | Safe |
| **Undo commits** | Yes | Yes |
| **Remote-friendly** | No | Yes |
| **Use case** | Local mistakes | Public commits |

## 🧠 Mental Model

- **Reset** = Rewind the film (destroy what you've recorded)
- **Revert** = Record a new scene that undoes the previous one

## 📖 Detailed Explanation

### git reset

Moves HEAD pointer back to a previous commit. Changes can be:
- Discarded (`--hard`)
- Kept in staging (`--soft`)
- Kept in working directory (`--mixed`)

```bash
git reset --soft HEAD~1   # Undo last commit, keep changes staged
git reset --mixed HEAD~1  # Undo last commit, keep changes unstaged
git reset --hard HEAD~1   # Discard last commit and all changes
```

### git revert

Creates a new commit that undoes the changes from a previous commit.

```bash
git revert HEAD~1
# Creates a new commit that cancels out the previous one
```

## 🔄 Decision Tree

```
Made a local mistake on unpushed commit?
  └─> git reset

Already pushed to shared branch?
  └─> git revert

Need to undo with history intact?
  └─> git revert

Need to completely remove commits?
  └─> git reset (be careful!)
```

## 📊 Detailed Diagrams

See comprehensive visual explanations in [diagrams.md](diagrams.md) including:
- The three states visualization
- Reset step-by-step
- Revert step-by-step
- Three reset modes (--soft, --mixed, --hard)
- Reset vs revert comparison table
- Practical scenarios

---

[← Back to Section 5](../README.md) | [→ Next Topic](../soft-vs-mixed-vs-hard/README.md)
