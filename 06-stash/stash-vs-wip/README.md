# stash vs WIP commit

## 📋 Quick Comparison

| Aspect | `git stash` | WIP Commit |
|--------|-----------|-----------|
| **Visibility** | Hidden | Visible |
| **History** | Not in history | In history |
| **Recovery** | Expires after 90 days | Permanent (until reset) |
| **Intent** | Pause work | Work in progress |
| **Cleanup** | Automatic | Manual |

## 📖 Usage

```bash
git stash                          # Hide changes
git commit -m "WIP: feature"       # Commit message shows intent
git reset --soft HEAD~1            # "Undo" the WIP commit
```

## 💡 When to Use Each

**Use stash for:**
- Quick context switch
- Emergency fixes
- Temporary work

**Use WIP commit for:**
- Work you'll complete on the same branch
- Backup of significant progress
- Collaborative development

---

[← Back to Section 6](../README.md) | [→ Next Section: Remote & Collaboration](../../07-remote-collaboration/README.md)
