# Visual Diagrams for Reset vs Revert

## 1. The Three States of a Repository

```
Your Repository History:

    Time Arrow →

    ○ Commit 5 (latest)
    │
    ○ Commit 4
    │
    ○ Commit 3 ← You want to undo
    │
    ○ Commit 2
    │
    ○ Commit 1 (root)

Question: How do you undo Commit 3?
  A) RESET - Go back in time (destructive)
  B) REVERT - Create a new commit that undoes it (safe)
```

## 2. RESET: Going Back in Time

```
RESET moves HEAD pointer backwards

BEFORE:  git reset --hard HEAD~1

    ○ Commit 5 ← HEAD (will be deleted)
    │
    ○ Commit 4
    │
    ○ Commit 3
    │
    ○ Commit 2
    │
    ○ Commit 1 (root)


AFTER:

    ✗ Commit 5 (GONE - deleted from history)
    
    ○ Commit 4 ← HEAD (now points here)
    │
    ○ Commit 3
    │
    ○ Commit 2
    │
    ○ Commit 1 (root)

Result: It's as if Commit 5 never happened
```

## 3. REVERT: Creating an Undo Commit

```
REVERT creates a NEW commit that cancels changes

BEFORE:  git revert HEAD

    ○ Commit 5 (changes you want to undo)
    │  + Added file.js
    │  + Changed config.json
    │
    ○ Commit 4
    │
    ○ Commit 3
    │
    ○ Commit 2
    │
    ○ Commit 1 (root)


AFTER:

    ○ Commit 5 (original - still here!)
    │
    ○ Revert-of-5 (NEW commit created)
    │  - Removed file.js
    │  - Reverted config.json
    │  "This commit undoes Commit 5"
    │
    ○ Commit 4
    │
    ○ Commit 3
    │
    ○ Commit 2
    │
    ○ Commit 1 (root)

Result: History shows both the mistake AND the fix
```

## 4. Reset Three Modes

```
Three ways to reset - each affects different areas:

Working Directory │ Staging Area │ Repository
────────────────────────────────────────────────

        ○
       /│\
        │ (git diff)
        │
    ┌───┴────────┐
    │ Working    │  ← Your files on disk
    │ Directory  │
    │            │
    ├────────────┤
    │            │
    │ Staging    │  ← git add puts stuff here
    │ Area       │
    │            │
    ├────────────┤
    │            │
    │ Repository │  ← .git folder (commits)
    │ (.git)     │
    │            │
    └────────────┘


RESET --soft: Move HEAD, keep everything else

    BEFORE                      AFTER
    
    Working: file.js            Working: file.js ✓
    Staging: file.js ✓          Staging: file.js ✓
    HEAD: commit-5              HEAD: commit-4
    
    Effect: Changes stay staged, ready to recommit


RESET --mixed: Move HEAD, unstage changes

    BEFORE                      AFTER
    
    Working: file.js            Working: file.js ✓
    Staging: file.js ✓          Staging: (empty)
    HEAD: commit-5              HEAD: commit-4
    
    Effect: Changes in working dir, not staged


RESET --hard: Move HEAD, discard everything

    BEFORE                      AFTER
    
    Working: file.js            Working: (deleted)
    Staging: file.js ✓          Staging: (empty)
    HEAD: commit-5              HEAD: commit-4
    
    Effect: Changes GONE, dangerous!
```

## 5. Comparison Table Visual

```
╔════════════════════════════════════════════════════════╗
║                    RESET vs REVERT                     ║
╠════════════════════════════════════════════════════════╣
║                                                        ║
║  RESET ─────────────────── REVERT                      ║
║                                                        ║
║  ○ commit-5              ○ commit-5 ← Original stays  ║
║  │ ↑ (DELETED)           │                             ║
║  │ └─ History removed    ○ Revert-5 ← New undo commit ║
║  │                       │                             ║
║  ○ commit-4              ○ commit-4                    ║
║  │                       │                             ║
║  ○ commit-3              ○ commit-3                    ║
║                                                        ║
║  Result:                 Result:                       ║
║  Looks like it never     Shows what happened &        ║
║  happened                how it was fixed             ║
║                                                        ║
║  ✓ Clean history         ✓ Transparent audit trail    ║
║  ✗ Dangerous for shared  ✓ Safe for shared branches   ║
║    branches              ✗ More commits               ║
║                                                        ║
╚════════════════════════════════════════════════════════╝
```

## 6. Decision Tree: Reset vs Revert

```
START: "I need to undo a commit"
  │
  ├─ Is it PUSHED to shared branch?
  │  │
  │  ├─ YES → USE REVERT
  │  │         (It's public, safe approach)
  │  │
  │  └─ NO → CONTINUE
  │
  ├─ Is it ONLY on your local branch?
  │  │
  │  ├─ YES → You can use RESET
  │  │         (No one else is affected)
  │  │
  │  └─ NO → USE REVERT
  │          (Someone might be depending on it)
  │
  └─ When uncertain → USE REVERT
                      (Always the safer choice)
```

## 7. Practical Scenarios

```
SCENARIO 1: Typo in last commit message
─────────────────────────────────────────

Commit History:
  ○ Commit 5: "Fiex user logout" (typo!)
  │
  ○ Commit 4
  │
  ○ Commit 3

Solution: git commit --amend -m "Fix user logout"
(Special command for this, not reset/revert)


SCENARIO 2: Wrong file committed locally
──────────────────────────────────────────

Commit History:
  ○ Commit 5: Added secret.env (OOPS!)
  │
  ○ Commit 4
  │
  ○ Commit 3

Solution: 
  git reset --soft HEAD~1   (undo commit, keep file)
  rm secret.env             (delete the file)
  git commit -m "Add feature without secret"


SCENARIO 3: Already pushed bad commit
──────────────────────────────────────

Commit History (Shared):
  ○ Commit 5: Added bad code (pushed!)
  │
  ○ Commit 4
  │
  ○ Commit 3

Solution: 
  git revert HEAD          (create undo commit)
  git push                 (team sees the fix)


SCENARIO 4: Need to go back multiple commits
─────────────────────────────────────────────

Commit History:
  ○ Commit 5: Error in this one
  │
  ○ Commit 4: This is good
  │
  ○ Commit 3
  │
  ○ Commit 2

If local only:
  git reset --hard HEAD~2  (go back to commit-3)

If already shared:
  git revert HEAD~2        (create undo for commit-5)
```

---

[← Back to Section 5](README.md)
