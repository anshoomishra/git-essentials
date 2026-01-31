# Visual Diagrams for Undo & Recovery

## 1. Git Reflog: Your Safety Net

```
REFLOG Records Everything:

Timeline of Your Actions:

  3 minutes ago:  git reset --soft HEAD~1
  ├─ HEAD@{0}

  10 minutes ago: git rebase origin/main  
  ├─ HEAD@{1}

  1 hour ago:     git checkout feature
  ├─ HEAD@{2}

  2 hours ago:    git commit -m "Fixed bug"
  ├─ HEAD@{3}    ← Still accessible!

  2.5 hours ago:  git merge develop
  ├─ HEAD@{4}    ← Can recover from here


REFLOG shows:

    $ git reflog
    
    f2e1c5a HEAD@{0}: reset: moving to HEAD~1
    a9c3d2e HEAD@{1}: rebase finished: returning to refs/heads/main
    b4e2f1d HEAD@{2}: checkout: moving from feature to main
    c5a7d1f HEAD@{3}: commit: Fixed bug
    d6b8e2g HEAD@{4}: merge develop
```

## 2. Lost Commits Recovery

```
SCENARIO: You deleted commits by accident

BEFORE (Multiple commits):
    ○ commit-5 ← HEAD
    │
    ○ commit-4
    │
    ○ commit-3
    │
    ○ commit-2
    │
    ○ commit-1


You accidentally do:
    $ git reset --hard HEAD~5
    

AFTER (Commits deleted):
    ○ commit-1 ← HEAD
    │
    (commits 2-5 seem GONE!)


RECOVERY with reflog:

    $ git reflog
    
    1a2b3c4 HEAD@{0}: reset: moving to HEAD~5  ← Current
    5d6e7f8 HEAD@{1}: commit: Feature done     ← Your lost commits!
    4c5d6e7 HEAD@{2}: commit: Add validation
    3b4c5d6 HEAD@{3}: commit: Fix bug
    2a3b4c5 HEAD@{4}: commit: Refactor code


Create new branch from lost commit:

    $ git checkout -b recovery-branch 5d6e7f8
    

NEW BRANCH gets your commits back:

    ○ commit-5 ← recovery-branch
    │
    ○ commit-4
    │
    ○ commit-3
    │
    ○ commit-2
    │
    ○ commit-1 ← main

Now you can merge it back or extract what you need!
```

## 3. Clean vs Reset --hard

```
CLEAN: Remove untracked files

Working Directory (Before):

  ├─ tracked-file.js    (in Git, modified)
  ├─ tracked-style.css  (in Git, clean)
  ├─ node_modules/      (untracked, .gitignored)
  ├─ temp.log           (untracked, temporary)
  ├─ .env               (untracked, secret)
  └─ build/             (untracked, generated)


  $ git clean -fd
  
  Removes: temp.log, .env, build/, node_modules/
  Keeps: tracked-file.js, tracked-style.css


RESET --hard: Discard changes to tracked files

Working Directory (Before):

  ├─ tracked-file.js    (in Git, MODIFIED ✗)
  ├─ tracked-style.css  (in Git, MODIFIED ✗)
  ├─ node_modules/      (untracked)
  ├─ temp.log           (untracked)
  └─ .env               (untracked)


  $ git reset --hard HEAD
  
  Reverts: tracked-file.js, tracked-style.css
  Keeps: node_modules/, temp.log, .env


COMBINATION (Nuclear option - clean everything):

  $ git clean -fd
  $ git reset --hard HEAD
  
  Removes all changes and untracked files
  ⚠️ Be very careful!
```

## 4. Recovery Decision Tree

```
START: "Something went wrong in Git!"
  │
  ├─ Did you LOSE COMMITS?
  │  │
  │  ├─ YES → Use git reflog
  │  │         git show <hash>    (check if it's yours)
  │  │         git checkout -b recovery <hash>
  │  │
  │  └─ NO → CONTINUE
  │
  ├─ Did you STAGE wrong files?
  │  │
  │  ├─ YES → git reset HEAD filename
  │  │         (unstage without losing changes)
  │  │
  │  └─ NO → CONTINUE
  │
  ├─ Did you COMMIT to wrong branch?
  │  │
  │  ├─ YES → git reset --soft HEAD~1
  │  │         git stash
  │  │         git checkout correct-branch
  │  │         git stash pop
  │  │
  │  └─ NO → CONTINUE
  │
  ├─ Did you PUSH to wrong branch?
  │  │
  │  ├─ YES → Use git revert
  │  │         git revert <commit-hash>
  │  │         git push
  │  │
  │  └─ NO → CONTINUE
  │
  └─ When uncertain:
     → Check git reflog
     → Review the changes
     → Create recovery branch
     → Never force delete immediately
```

## 5. Common Recovery Scenarios

```
╔══════════════════════════════════════════════════════╗
║ SCENARIO 1: Undo last commit (not pushed)           ║
╠══════════════════════════════════════════════════════╣
║                                                      ║
║ Problem: git commit -m "Wrong message"              ║
║                                                      ║
║ Solution:                                           ║
║   git reset --soft HEAD~1                           ║
║   git commit -m "Correct message"                   ║
║                                                      ║
║ Result: ✓ Fixed message, changes preserved         ║
║                                                      ║
╚══════════════════════════════════════════════════════╝


╔══════════════════════════════════════════════════════╗
║ SCENARIO 2: Committed sensitive data               ║
╠══════════════════════════════════════════════════════╣
║                                                      ║
║ Problem: Accidentally committed .env with secrets  ║
║                                                      ║
║ Solution:                                           ║
║   git rm --cached .env                             ║
║   echo ".env" >> .gitignore                        ║
║   git commit -m "Remove .env from tracking"        ║
║   git push                                          ║
║                                                      ║
║ Result: ✓ File removed, future commits safe       ║
║                                                      ║
╚══════════════════════════════════════════════════════╝


╔══════════════════════════════════════════════════════╗
║ SCENARIO 3: Messed up merge, need to undo         ║
╠══════════════════════════════════════════════════════╣
║                                                      ║
║ Problem: git merge wrong-branch                     ║
║                                                      ║
║ Solution (if still in merge):                       ║
║   git merge --abort                                 ║
║                                                      ║
║ Solution (if already merged):                       ║
║   git reflog                                         ║
║   git reset --hard HEAD@{n}                         ║
║                                                      ║
║ Result: ✓ Merge undone                             ║
║                                                      ║
╚══════════════════════════════════════════════════════╝


╔══════════════════════════════════════════════════════╗
║ SCENARIO 4: Want old version of a file             ║
╠══════════════════════════════════════════════════════╣
║                                                      ║
║ Problem: Deleted a file, want to restore           ║
║                                                      ║
║ Solution:                                           ║
║   git log --oneline -- filename                    ║
║   git show <commit>:filename > filename            ║
║                                                      ║
║ Result: ✓ Old version restored                     ║
║                                                      ║
╚══════════════════════════════════════════════════════╝
```

---

[← Back to Section 5](README.md)
