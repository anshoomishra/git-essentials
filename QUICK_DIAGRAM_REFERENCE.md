# Quick Diagram Reference Card

Print this page for quick access to all diagrams in the Git VS Series!

## 🔍 Find Diagrams By Topic

### Foundation Topics
```
Topic                           Location                    Key Diagrams
────────────────────────────────────────────────────────────────────────
Working directory/staging       01-basics/diagrams.md       Flow diagram, state model
Untracked vs tracked            01-basics/diagrams.md       Lifecycle diagram
git init vs git clone           01-basics/diagrams.md       Comparison table
git status vs git diff          01-basics/diagrams.md       Side-by-side views
```

### History & Commits
```
Topic                           Location                    Key Diagrams
────────────────────────────────────────────────────────────────────────
git add vs git commit           02-commits-history/         Workflow diagram
git commit vs git commit -a     02-commits-history/         Timeline comparison
git log vs git reflog           02-commits-history/         History vs actions
Amend vs new commit             02-commits-history/         Before/after diagrams
```

### Branching
```
Topic                           Location                    Key Diagrams
────────────────────────────────────────────────────────────────────────
What are branches               03-branching/               Pointer visualization
Creating branches               03-branching/               Step-by-step process
Switching branches              03-branching/               git checkout vs git switch
Branch lifecycle                03-branching/               Timeline visualization
```

### CRITICAL: Merge & Rebase ⭐
```
Topic                           Location                    Key Diagrams
────────────────────────────────────────────────────────────────────────
git merge vs git rebase         04-merge-rebase/            Comparison (must read!)
                                merge-vs-rebase/diagrams.md
                                
Diverged branches               04-merge-rebase/            Problem visualization
                                merge-vs-rebase/diagrams.md
                                
Merge process                   04-merge-rebase/            Step-by-step
                                merge-vs-rebase/diagrams.md
                                
Rebase process                  04-merge-rebase/            Step-by-step
                                merge-vs-rebase/diagrams.md
                                
When to use which               04-merge-rebase/            Decision tree
                                merge-vs-rebase/diagrams.md
```

### Undo & Recovery
```
Topic                           Location                    Key Diagrams
────────────────────────────────────────────────────────────────────────
git reset vs git revert         05-undo-recovery/           Comparison table
                                reset-vs-revert/diagrams.md
                                
Three reset modes               05-undo-recovery/           State changes
                                reset-vs-revert/diagrams.md
                                
Git reflog                      05-undo-recovery/           Timeline of actions
                                diagrams.md
                                
Lost commits recovery           05-undo-recovery/           Recovery process
                                diagrams.md
```

### Remote & Collaboration
```
Topic                           Location                    Key Diagrams
────────────────────────────────────────────────────────────────────────
fork vs clone                   07-remote-collaboration/    Server vs local
                                fetch-vs-pull/diagrams.md
                                
origin vs upstream              07-remote-collaboration/    Remote references
                                fetch-vs-pull/diagrams.md
                                
git fetch vs git pull           07-remote-collaboration/    Workflow comparison
                                fetch-vs-pull/diagrams.md
                                
Pull request workflow           07-remote-collaboration/    Step-by-step process
                                fetch-vs-pull/diagrams.md
```

## 🎯 Diagrams by Learning Level

### Beginner (Start Here!)
1. [01-basics/diagrams.md](01-basics/diagrams.md) - Three states of Git
2. [01-basics/diagrams.md](01-basics/diagrams.md) - File tracking lifecycle
3. [02-commits-history/diagrams.md](02-commits-history/diagrams.md) - Add vs commit

### Intermediate
4. [03-branching/diagrams.md](03-branching/diagrams.md) - Branch workflow
5. [05-undo-recovery/diagrams.md](05-undo-recovery/diagrams.md) - Reflog concept
6. [07-remote-collaboration/fetch-vs-pull/diagrams.md](07-remote-collaboration/fetch-vs-pull/diagrams.md) - Fetch vs pull

### Advanced (Master These!)
7. ⭐ [04-merge-rebase/merge-vs-rebase/diagrams.md](04-merge-rebase/merge-vs-rebase/diagrams.md) - Merge vs rebase
8. [05-undo-recovery/reset-vs-revert/diagrams.md](05-undo-recovery/reset-vs-revert/diagrams.md) - Reset modes
9. [07-remote-collaboration/fetch-vs-pull/diagrams.md](07-remote-collaboration/fetch-vs-pull/diagrams.md) - Pull request workflow

## 🔥 Most Important Diagrams (Study These First!)

### #1: The Three States of Git
**Location:** [01-basics/diagrams.md](01-basics/diagrams.md)
**Why:** Foundation for everything else
**Time:** 10 minutes to understand

### #2: Merge vs Rebase
**Location:** [04-merge-rebase/merge-vs-rebase/diagrams.md](04-merge-rebase/merge-vs-rebase/diagrams.md)
**Why:** Most confused concept, most important to master
**Time:** 30 minutes to really understand

### #3: Reset vs Revert
**Location:** [05-undo-recovery/reset-vs-revert/diagrams.md](05-undo-recovery/reset-vs-revert/diagrams.md)
**Why:** Recovery is essential, understanding modes is critical
**Time:** 20 minutes to understand

## 📱 Using This Card

### 1. Keep a Copy
```
Print this page
Laminate it
Keep at your desk
```

### 2. Quick Reference Workflow
```
1. Pick your topic from the list above
2. Go to the location shown
3. Open the diagrams.md file
4. Find the specific diagram
5. Read the explanation
```

### 3. When You're Stuck
```
1. Identify your problem
2. Find it in the table
3. Go to that section's diagram
4. See the visual explanation
5. Understand, then act
```

## 🗺️ All Diagram Files at a Glance

```
d:\git-essentials\
├── DIAGRAMS_INDEX.md                           ← Complete index
├── 01-basics\diagrams.md
├── 02-commits-history\diagrams.md
├── 03-branching\diagrams.md
├── 04-merge-rebase\merge-vs-rebase\diagrams.md  (⭐ CRITICAL)
├── 05-undo-recovery\diagrams.md
├── 05-undo-recovery\reset-vs-revert\diagrams.md
└── 07-remote-collaboration\fetch-vs-pull\diagrams.md
```

## ⏱️ Suggested Study Time

### Quick Overview
- All diagrams browsed: **30 minutes**
- Understand basic concepts: **1 hour**

### Solid Understanding
- Study foundation diagrams: **2 hours**
- Study critical diagrams: **3 hours**
- Total: **5 hours**

### Mastery
- Deep dive all sections: **10 hours**
- Practice with examples: **5 hours**
- Total: **15 hours**

## 💾 Offline Use

All diagrams are:
- ✓ Plain text ASCII
- ✓ No images
- ✓ No special tools needed
- ✓ Work in any text editor
- ✓ Printable and portable

## 🎓 Study Tips

1. **Read the text first** - Understand before viewing
2. **Study the diagram** - See the visualization
3. **Compare with others** - See different representations
4. **Draw it yourself** - Solidify your understanding
5. **Apply to your work** - Use what you learned

---

**Total Diagrams:** 100+ visualizations across 7 files

**Total Study Guide:** This quick reference + DIAGRAMS_INDEX.md

See [DIAGRAMS_INDEX.md](DIAGRAMS_INDEX.md) for the complete guide.
