# Visual Diagrams for Merge vs Rebase (CRITICAL)

## 1. The Problem: Diverged Branches

```
INITIAL STATE:

Both main and feature branch have the same ancestor:

    main
     ↓
    ○ commit-5 (main latest)
    │
    ○ commit-4
    │
    ○ commit-3 ← Both branches here
    │    ↑
    │    feature
    │
    ○ commit-2
    │
    ○ commit-1 (root)


WORK CONTINUES ON BOTH:

    main                feature
     ↓                   ↓
    ○ commit-5          ○ new-feature-2
    │                   │
    ○ commit-4          ○ new-feature-1
    │                   │
    ○ commit-3 ←──┬─────┘ (common ancestor)
    │             │
    ○ commit-2    ← Diverged!
    │
    ○ commit-1
```

## 2. Solution A: MERGE

```
MERGE: Combine two histories with a merge commit

Command: git merge feature-branch

BEFORE:

    main                feature
     ↓                   ↓
    ○ c5                 ○ f2 (new-feature-2)
    │                    │
    ○ c4                 ○ f1 (new-feature-1)
    │                    │
    └──── <- c3 ────────┘ (common ancestor)


AFTER: git merge

    main
     ↓
    ○ merge-commit (NEW!)
    ├─→ ○ c5
    │   │
    │   ○ c4
    │   │
    └───┴──→ ○ f2
            │
            ○ f1
            │
            ○ c3 (common ancestor)

RESULT: Merge commit shows both histories coming together
```

## 3. Solution B: REBASE

```
REBASE: Replay commits on top of another branch

Command: git rebase main (or git switch feature && git rebase main)

BEFORE:

    main                feature
     ↓                   ↓
    ○ c5                 ○ f2 (new-feature-2)
    │                    │
    ○ c4                 ○ f1 (new-feature-1)
    │                    │
    └──── <- c3 ────────┘ (common ancestor)


DURING REBASE: Git is replaying feature commits on top of main

    Step 1: Take f1 commit
    Step 2: Apply it on top of c5
    Step 3: Take f2 commit
    Step 4: Apply it on top of c5+f1


AFTER: git rebase

    main
     ↓
    ○ c5
    │
    ○ c4
    │
    ○ c3                feature
    │                    ↓
    └─→ ○ f1' (replayed)
        │
        ○ f2' (replayed)

RESULT: Linear history - feature on top of main
```

## 4. History Comparison

```
╔════════════════════════════════════════════════════════╗
║ MERGE - Preserves Branch History                      ║
╠════════════════════════════════════════════════════════╣
║                                                        ║
║           ↓ main                                       ║
║     ○ merge ─ ← Shows the branch point                ║
║     │\     \ ← History shows it's a merge             ║
║     │ ○ ── ○ ← Both branches visible                  ║
║     │/  feature                                        ║
║     ○                                                  ║
║                                                        ║
║ Pros:                                                  ║
║  ✓ Full history preserved                             ║
║  ✓ Shows when merges happened                         ║
║  ✓ Safe for shared branches                           ║
║                                                        ║
║ Cons:                                                  ║
║  ✗ Looks complex                                       ║
║  ✗ Many merge commits can clutter                     ║
║                                                        ║
╚════════════════════════════════════════════════════════╝


╔════════════════════════════════════════════════════════╗
║ REBASE - Linear History                               ║
╠════════════════════════════════════════════════════════╣
║                                                        ║
║     ○ feature commit 2   ↑                             ║
║     │                    ← Linear!                     ║
║     ○ feature commit 1   ← Clean history               ║
║     │                                                  ║
║     ○ main commit 2                                    ║
║     │                                                  ║
║     ○ main commit 1                                    ║
║     │                                                  ║
║     ○ root                                             ║
║                                                        ║
║ Pros:                                                  ║
║  ✓ Clean, linear history                              ║
║  ✓ Easy to read                                        ║
║  ✓ Fewer commits                                       ║
║                                                        ║
║ Cons:                                                  ║
║  ✗ Rewrites history                                    ║
║  ✗ Risky on shared branches                           ║
║  ✗ Lost context of original branches                  ║
║                                                        ║
╚════════════════════════════════════════════════════════╝
```

## 5. Decision Tree

```
Decision: Should I MERGE or REBASE?

START
  │
  ├─ Is this branch SHARED/PUBLIC/PUSHED?
  │  │
  │  ├─ YES → USE MERGE
  │  │         (Safe, preserves history)
  │  │
  │  └─ NO → CONTINUE
  │
  ├─ Is this YOUR PRIVATE branch?
  │  │
  │  ├─ YES → USE REBASE (optional)
  │  │         (Clean history, you're the only one)
  │  │
  │  └─ NO → CONTINUE
  │
  ├─ Do you want LINEAR history?
  │  │
  │  ├─ YES → USE REBASE
  │  │
  │  └─ NO → USE MERGE
  │
  └─ GENERAL RULE: When in doubt, MERGE
```

## 6. Common Workflow Comparison

```
WORKFLOW: Team developing feature for 2 weeks

═══════════════════════════════════════════════════════════

MERGE APPROACH:

    Week 1
    ○ add auth        ← Main evolves
    │
    ├─ ○ form 1       ← Feature evolves
    │  │
    │  ○ form 2
    │
    ○ add api
    │
    Week 2
    ○ add tests       ← Main evolves more
    │
    ├─ ○ form 3       ← Feature evolves more
    │  │
    │  ○ validation
    │
    ○ deploy
    │
    ○ MERGE COMMIT ← Finally merge
    │ │
    │ └─ ○ form 3
    │    │
    │    ○ validation


REBASE APPROACH:

    Week 1-2 (same)
    ○ add auth
    │
    ├─ ○ form 1
    │  │
    │  ○ form 2
    │
    ○ add api
    │
    ○ add tests
    │
    ├─ ○ form 3
    │  │
    │  ○ validation
    │
    ○ deploy
    │
    ○ REBASE ← Rewind feature, replay on top
    │
    ○ form 3 (replayed)
    │
    ○ validation (replayed)
    │
    ○ form 2
    │
    ○ form 1


RESULT:
  MERGE: Branch history visible, but complex
  REBASE: Linear history, but loses branch context
```

## 7. Real-world Analogy

```
MERGE is like: Two roads joining at an intersection
    
    Main Road ────────────────────→
                   ↗                
              Merge     ←───────── Side Road
                
    Both roads are visible after the merge


REBASE is like: Moving a building to a new foundation

    Original: Building on old ground
    
    Rebase: Pickup building, move it to new foundation
            as if it was built on new ground
    
    Result: No trace of old location
```

---

[← Back to Section 4](README.md)
