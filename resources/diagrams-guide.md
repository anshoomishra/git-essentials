# Visual Diagrams Guide

This repository includes comprehensive ASCII-based diagrams throughout the tutorial to help visualize Git concepts.

## 📊 Where to Find Diagrams

### Section 1: Git Basics
**Location:** [01-basics/diagrams.md](../01-basics/diagrams.md)

Visualizations include:
- The three states of Git (working directory → staging → repository)
- Untracked vs tracked files
- git init vs git clone comparison
- git status vs git diff comparison
- Complete Git workflow

### Section 2: Commits & History
**Location:** [02-commits-history/diagrams.md](../02-commits-history/diagrams.md)

Visualizations include:
- git add vs git commit workflow
- git commit vs git commit -a comparison
- git log vs git reflog
- Amend vs new commit scenarios
- Commit history visualization
- Best practices for commit messages

### Section 3: Branching
**Location:** [03-branching/diagrams.md](../03-branching/diagrams.md)

Visualizations include:
- What branches are
- Creating a branch
- Switching branches (git checkout vs git switch)
- Branch-feature workflow
- Multiple branches visualization
- Long-lived vs short-lived branches
- Branch naming conventions

### Section 4: Merge & Rebase
**Location:** [04-merge-rebase/merge-vs-rebase/diagrams.md](../04-merge-rebase/merge-vs-rebase/diagrams.md)

Visualizations include:
- The diverged branches problem
- MERGE process (step-by-step)
- REBASE process (step-by-step)
- History comparison (merge vs rebase)
- Decision tree
- Common workflow comparison
- Real-world analogy

### Section 5: Undo & Recovery
**Location:** [05-undo-recovery/diagrams.md](../05-undo-recovery/diagrams.md)

Visualizations include:
- Git reflog: your safety net
- Lost commits recovery
- git clean vs git reset --hard
- Recovery decision tree
- Common recovery scenarios

### Section 5 (Advanced): Reset vs Revert
**Location:** [05-undo-recovery/reset-vs-revert/diagrams.md](../05-undo-recovery/reset-vs-revert/diagrams.md)

Visualizations include:
- The three states of a repository
- RESET: going back in time
- REVERT: creating an undo commit
- Three reset modes (--soft, --mixed, --hard)
- Comparison table visual
- Practical scenarios

### Section 7: Remote & Collaboration
**Location:** [07-remote-collaboration/fetch-vs-pull/diagrams.md](../07-remote-collaboration/fetch-vs-pull/diagrams.md)

Visualizations include:
- FORK vs CLONE
- Origin vs upstream
- FETCH workflow
- PULL workflow
- Fetch vs Pull vs Rebase
- Push scenarios
- Pull request workflow

## 🎨 Diagram Types

### 1. **Flow Diagrams**
Show the progression of Git operations:
```
File → git add → Staging → git commit → Repository
```

### 2. **Timeline Diagrams**
Visualize commit history:
```
○ Commit 5
│
○ Commit 4
│
○ Commit 3
```

### 3. **Branching Diagrams**
Show how branches diverge and merge:
```
    main           feature
     ↓               ↓
    ○ ─────────────┐ ○
    │              │ │
    └──────────────┘ ○
```

### 4. **State Diagrams**
Display different states and transitions:
```
┌──────────────────┐
│ Working Directory│
└────────┬─────────┘
         │ git add
         ↓
┌──────────────────┐
│  Staging Area    │
└────────┬─────────┘
         │ git commit
         ↓
┌──────────────────┐
│   Repository     │
└──────────────────┘
```

### 5. **Decision Trees**
Help with choosing commands:
```
START: Need to undo?
  │
  ├─ Local commit? → git reset
  │
  └─ Already pushed? → git revert
```

### 6. **Comparison Tables**
Side-by-side feature comparisons in visual format

### 7. **Real-world Scenarios**
Practical examples with step-by-step visualization

## 💡 How to Use the Diagrams

1. **Start with conceptual diagrams** - Understand what each operation does
2. **Follow step-by-step flows** - See how operations are chained
3. **Use comparison tables** - Make decisions between similar commands
4. **Reference decision trees** - Pick the right command for your situation
5. **Study real scenarios** - Understand practical usage patterns

## 🔍 Reading ASCII Diagrams

### Symbols Used

| Symbol | Meaning |
|--------|---------|
| `○` | A commit |
| `│` | Connection/flow |
| `→` | Process or flow direction |
| `↓` | Downward flow |
| `↑` | Upward flow |
| `├` | Branch point |
| `└` | End of branch |
| `─` | Horizontal connection |
| `✓` | Completed/included |
| `✗` | Not included/removed |
| `*` | Special or important |
| `─ ─ ─` | Dashed line (alternate path) |
| `↗` | Diagonal flow |

## 📝 Tips for Understanding Diagrams

1. **Read left to right, top to bottom** - Like reading text
2. **Follow the arrows** - They show the direction of change
3. **Note the time flow** - Usually shows oldest at bottom, newest at top
4. **Look for branches** - Splits show diverging paths
5. **Track the changes** - Watch how files move through states
6. **Compare before/after** - Most diagrams show both states

## 🎯 Key Diagrams to Master

**For beginners:**
- The three states of Git (working directory → staging → repository)
- git init vs git clone
- Basic branch workflow

**For intermediate:**
- Merge vs rebase (critical!)
- Reset vs revert
- Fetch vs pull

**For advanced:**
- Complex merge scenarios
- Conflict resolution visualization
- Multi-branch workflows

## 💾 Offline Reference

All diagrams are in plain text ASCII format, so they work:
- In terminal/console
- In text editors
- In Git clients
- On any platform
- Without internet connection

Print the diagrams.md files for quick reference at your desk!

---

[← Back to Resources](README.md)
