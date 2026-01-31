# interactive rebase

## 📋 Purpose

Interactive rebase lets you edit, reorder, combine, or delete commits before merging.

## 📖 Usage

```bash
git rebase -i HEAD~3              # Last 3 commits
git rebase -i <commit-hash>       # From specific commit
```

## 🎯 Common Operations

- **pick** - Keep commit
- **reword** - Change commit message
- **squash** - Combine with previous
- **fixup** - Combine, discard message
- **drop** - Delete commit

## ⚠️ Warning

Only use on unpushed commits. Never on shared branches.

---

[← Back to Section 4](../README.md) | [→ Next Section: Undo & Recovery](../../05-undo-recovery/README.md)
