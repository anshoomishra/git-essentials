# Visual Diagrams for Commits & History

## 1. Git Add vs Git Commit

```
THE WORKFLOW:

Your Files              Staging Area           Repository
(Working Dir)          (Index)                (.git)

file.js ────────add───────> file.js
                            └──commit──────> commit-123
                                            ├─ file.js
                                            └─ "message"


DETAILED FLOW:

1. Create/Edit Files
   ┌──────────────┐
   │  file.js ✏️  │  ← You modify the file
   │ file.css ✏️  │
   └──────────────┘

2. git add (Stage changes)
   ┌──────────────────────┐
   │   Staging Area       │
   │   (Your Shopping     │
   │    Cart)             │
   │                      │
   │  ✓ file.js          │
   │  ✓ file.css         │
   └──────────────────────┘

3. git commit (Save to history)
   ┌──────────────────────┐
   │   Repository         │
   │   (History)          │
   │                      │
   │  commit-123 ✓        │
   │  Author: You         │
   │  Date: Today         │
   │  Message: "Fix bug"  │
   └──────────────────────┘
```

## 2. Git Commit vs Git Commit -a

```
SCENARIO: You have modified tracked files

                    Without -a              With -a
                    ──────────────────────────────────

1. Start with:      file.js (modified)      file.js (modified)
                    config.json (modified)  config.json (modified)

2. Command:         git add file.js         git commit -am
                    git commit -m "msg"     "message"

3. Result:          Selective commit        All tracked files
                    (only staged)           auto-staged & committed

4. Untracked        NOT included            NOT included
   new files:       (must add manually)     (must add manually)


COMPARISON TABLE:

Command              What Gets Committed
─────────────────────────────────────────
git commit           Only staged files
git commit -a        All modified tracked files (auto-stage)
git commit -a file   Still all tracked files (-a wins)


TIMELINE:

git add file1
git add file2
git commit -m "Add features"  ← Only file1 & file2 committed


git commit -am "Updates"      ← All modified tracked files committed
```

## 3. Git Log vs Git Reflog

```
git log: Official History

    ○ commit-5: "Deploy to production"
    │ Author: Alice
    │ Date: Jan 31 2:30 PM
    │
    ○ commit-4: "Fix validation bug"
    │ Author: Bob
    │ Date: Jan 31 1:15 PM
    │
    ○ commit-3: "Add login form"
    │ Author: Alice
    │ Date: Jan 31 10:00 AM
    │
    ○ commit-2: "Setup project"
    │ Author: Charlie
    │ Date: Jan 30 5:00 PM
    │
    ○ commit-1: "Initial commit"
      Author: Alice
      Date: Jan 30 3:00 PM

    $ git log --oneline
    5d6a7b Deploy to production
    4c5a6b Fix validation bug
    3b4a5a Add login form
    2a3b4c Setup project
    1a2b3c Initial commit


git reflog: All Your Actions

    $ git reflog
    
    5d6a7b HEAD@{0}: commit: Deploy to production
    4c5a6b HEAD@{1}: rebase finished: returning to main
    3b4a5a HEAD@{2}: rebase: Add login form
    2a3b4c HEAD@{3}: checkout: switching to main
    1a2b3c HEAD@{4}: reset: moving to HEAD~2


Key Differences:

    git log              →  Official story
    git reflog           →  Your actions
    
    git log              →  What commits happened
    git reflog           →  Everything that moved HEAD
```

## 4. Amend Commit vs New Commit

```
SCENARIO: You want to fix a mistake in the last commit

┌──────────────────────────────────────────────────────┐
│ OPTION A: Amend (Before Pushing)                     │
└──────────────────────────────────────────────────────┘

BEFORE:

    ○ commit-5: "Fiex login"  ← Typo in message!
    │
    ○ commit-4
    │
    ○ commit-3


git commit --amend -m "Fix login form"


AFTER:

    ○ commit-5: "Fix login form"  ← Fixed message
    │ (same commit hash? NO - rewrites history)
    │
    ○ commit-4
    │
    ○ commit-3


┌──────────────────────────────────────────────────────┐
│ OPTION B: New Commit (After Pushing)                 │
└──────────────────────────────────────────────────────┘

BEFORE:

    ○ commit-5: "Fiex login"  ← Typo (already pushed!)
    │
    ○ commit-4
    │
    ○ commit-3


git commit -m "Fix typo in commit message"


AFTER:

    ○ commit-6: "Fix typo in commit message"  ← New commit
    │
    ○ commit-5: "Fiex login"  ← Original stays
    │
    ○ commit-4
    │
    ○ commit-3


TIMELINE EXAMPLE:

3:00 PM: git commit -m "Add auth"         → commit-10
3:05 PM: git push
3:10 PM: "Oops! Typo in message"
         git commit --amend?  NO! (already pushed)
         git commit -m "Fix typo" → commit-11 ✓


WHY THE DIFFERENCE?

Before Push:
  History is LOCAL ONLY
  Only you know about it
  Amend is safe ✓

After Push:
  History is SHARED
  Others might depend on it
  Amend breaks collaboration ✗
  Use new commit instead ✓
```

## 5. Commit History Visualization

```
A REAL PROJECT TIMELINE:

    ○ v1.2.0 ← Tag (release)
    │ commit-20: "Bump version"
    │
    ○ commit-19: "Add dark mode"
    │
    ○ commit-18: "Fix spacing bug"
    │
    ○ v1.1.0 ← Previous release
    │
    ├─ hotfix branch
    │  commit-17: "Emergency security patch"
    │  commit-16: "Test security fix"
    │
    ○ commit-15: "Merge hotfix"
    │
    ○ commit-14: "Add payment processing"
    │
    ○ commit-13: "Add user profiles"
    │
    ○ commit-12: "Setup database"
    │
    ○ commit-11: "Initial project"


VIEW WITH: git log --graph --oneline --all

*   commit-15 Merge hotfix
|\
| * commit-17 Emergency security patch
| * commit-16 Test security fix
|/
* commit-14 Add payment processing
* commit-13 Add user profiles
* commit-12 Setup database
* commit-11 Initial project
```

## 6. Commit Messages Best Practices

```
GOOD COMMIT MESSAGE:

    commit abc123
    Author: Alice Smith <alice@example.com>
    Date:   Wed Jan 31 14:30:00 2024 +0000

        Fix login validation on password reset

        - Validate password format before submission
        - Show error message if password too short
        - Clear form after successful reset
        - Add unit tests for validator

        Fixes #1234
        Related to #1235


ANATOMY:

    ┌─────────────────────────────────────────┐
    │ Fix login validation on password reset  │ ← Subject (50 chars)
    │                                         │
    │ - Validate password format              │ ← Blank line
    │ - Show error message                    │ ← Body (72 chars wide)
    │ - Clear form after success              │ ← Multiple paragraphs OK
    │ - Add unit tests                        │
    │                                         │
    │ Fixes #1234                             │ ← Reference issues
    └─────────────────────────────────────────┘


BAD EXAMPLES:

    "Fixed stuff"                   ← Too vague
    "Fixed login bug and also     ← Too long, unclear
     updated styling and added
     new feature"
    "fixd" → "fix"                 ← Spelling error
    "WIP"                          ← Not descriptive


GOOD PATTERNS:

    Add feature X
    Fix bug in Y
    Refactor Z for performance
    Update documentation
    Remove deprecated API
    Merge PR #123 from branch
```

---

[← Back to Section 2](README.md)
