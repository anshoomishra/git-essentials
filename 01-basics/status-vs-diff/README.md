# git status vs git diff

## 📋 Quick Comparison

| Aspect | `git status` | `git diff` |
|--------|-----------|-----------|
| **Shows** | Which files changed | What changed IN files |
| **Format** | Summary list | Detailed line-by-line |
| **Staged files** | Yes | Yes, with `--staged` |
| **Untracked files** | Yes | No |
| **When to use** | Quick overview | Deep inspection |

## 🧠 Mental Model

- **`git status`** = Bird's eye view of your project
- **`git diff`** = Microscope to see exact changes

## 📖 Detailed Explanation

### git status

Shows which files have changed, which are staged, and which are untracked.

**Command:**
```bash
git status              # Full output
git status -s          # Short format
git status --porcelain # Machine-readable
```

**Output tells you:**
- Modified files (unstaged)
- Staged changes ready to commit
- Untracked files (never added)
- Branch information

### git diff

Shows the actual content changes in files.

**Command:**
```bash
git diff                    # Unstaged changes
git diff --staged           # Staged changes
git diff <branch1> <branch2> # Compare branches
```

## 🔄 Common Workflow

1. Make changes to files
2. `git status` → See overview
3. `git diff` → Inspect specific changes
4. `git add` → Stage changes
5. `git diff --staged` → Verify before commit
6. `git commit` → Save changes

---

[← Back to Section 1](../README.md) | [→ Next Topic](../tracked-vs-untracked/README.md)
