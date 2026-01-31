# Visual Diagrams for Remote & Collaboration

## 1. Fork vs Clone

```
FORK: Copy on GitHub (Server-side)

    GitHub (Remote)
    ┌──────────────────────────────┐
    │  Original Project            │
    │  owner/project               │
    │  ├─ file.js                  │
    │  ├─ README.md                │
    │  └─ Full History             │
    │                              │
    │  ↓ You click "Fork"           │
    │                              │
    │  Your Fork                   │
    │  yourname/project            │
    │  ├─ file.js                  │
    │  ├─ README.md                │
    │  └─ Full History             │
    └──────────────────────────────┘
           ↑ (two separate repos)
           │ You own yours
           │ Original owner owns theirs
           │
    Your Machine (no files yet)


CLONE: Download to Your Computer (Local)

    GitHub Remote              Your Machine (Local)
    ┌────────────────┐        ┌──────────────────┐
    │ yourname/      │   ──>  │ project/         │
    │ project        │ clone  │ ├─ .git/         │
    │                │        │ ├─ file.js       │
    │                │        │ ├─ README.md     │
    │                │        │ └─ (all files)   │
    └────────────────┘        └──────────────────┘
                              Synced with remote
```

## 2. Origin vs Upstream

```
CONTRIBUTING TO OPEN SOURCE

Step 1: Fork the original repo on GitHub

    Original (upstream)       Your Fork (origin)
    owner/project             yourname/project
         ↓                            ↓
         └────────────────────────────┘
          (separate repos, both on GitHub)


Step 2: Clone your fork to your computer

    GitHub                     Your Computer
    
    upstream/project  ──┐
                        ├──> your-project/
    origin/project ────┘     ├─ .git/
                              │  ├─ remotes/
                              │  │  ├─ origin/
                              │  │  └─ upstream/
                              ├─ file.js
                              └─ README.md


YOUR REMOTES:

    git remote -v
    
    origin     https://github.com/yourname/project.git
    upstream   https://github.com/owner/project.git
    
    ↑ Your fork (you can push)
    ↑ Original repo (you can't push, only pull)


WORKFLOW:

1. Fetch from upstream (original)
   git fetch upstream
   └─> Updates your knowledge of original

2. Merge upstream/main into your main
   git merge upstream/main
   └─> Syncs your code with latest original

3. Push to origin (your fork)
   git push origin main
   └─> Updates your fork on GitHub

4. Create Pull Request
   GitHub: origin/main → upstream/main
   └─> Ask to merge your changes to original
```

## 3. Fetch vs Pull

```
FETCH: Get updates without merging

    Remote Repository (GitHub)
    ┌────────────────────────────┐
    │  origin/main (on GitHub)   │
    │  ├─ commit-5               │
    │  ├─ commit-4 (NEW!)        │
    │  └─ commit-3               │
    └────────────────────────────┘
             │
             │ git fetch
             ↓
    Your Computer
    ┌────────────────────────────┐
    │  origin/main (local copy)  │
    │  ├─ commit-5               │
    │  ├─ commit-4 (UPDATED)     │
    │  └─ commit-3               │
    │                            │
    │  main (YOUR branch)        │
    │  ├─ commit-3               │
    │  └─ commit-2               │
    │                            │
    │  (No merge happened!)      │
    └────────────────────────────┘
    
Result: You see what changed, but your branch is untouched
```

```
PULL: Fetch + Merge

    Remote Repository (GitHub)
    ┌────────────────────────────┐
    │  origin/main (on GitHub)   │
    │  ├─ commit-5               │
    │  ├─ commit-4 (NEW!)        │
    │  └─ commit-3               │
    └────────────────────────────┘
             │
             │ git pull
             ├─ (fetch)
             └─ (merge)
             ↓
    Your Computer
    ┌────────────────────────────┐
    │  main (YOUR branch)        │
    │  ├─ MERGE COMMIT (NEW!)    │
    │  ├─ commit-5               │
    │  ├─ commit-4               │
    │  └─ commit-3               │
    │                            │
    │  (Merged into your branch) │
    └────────────────────────────┘
    
Result: Your local branch is automatically updated
```

## 4. Fetch vs Pull vs Rebase

```
START POSITION:

    Remote (GitHub)           Local Machine
    ○ commit-5                ○ commit-3
    │                         │
    ○ commit-4                ○ commit-2
    │                         │
    ○ commit-3                ○ commit-1


OPTION A: git pull (fetch + merge)

    Result:                   
    ○ MERGE COMMIT ← New commit created
    ├─ ○ commit-5             
    │  │                      
    │  ○ commit-4             
    │  │                      
    └──┴─ ○ commit-3          
       │                      
       ○ commit-2             
       │                      
       ○ commit-1


OPTION B: git pull --rebase (fetch + rebase)

    Result:
    ○ commit-5
    │
    ○ commit-4
    │
    ○ commit-3
    │
    ○ new-commit-2 (replayed)
    │
    ○ new-commit-1 (replayed)

    Linear history, no merge commit!
```

## 5. Push Scenarios

```
SCENARIO 1: Normal Push (Clean History)

Your Local                Remote (GitHub)
  ○ commit-5              ○ commit-3
  │                       │
  ○ commit-4              ○ commit-2
  │                       │
  ○ commit-3              ○ commit-1


  git push
  ↓

Your Local                Remote (GitHub)
  ○ commit-5 ◄──────┐     ○ commit-5 ◄──┐
  │                 │     │              │
  ○ commit-4        │     ○ commit-4     │
  │                 │     │              │
  ○ commit-3 ◄──────┴─────┴─ commit-3    │
  │                           │          │
  └───────────────────────────┴──────────┘
  
  ✓ Synced!


SCENARIO 2: Behind Remote (Need to Pull First)

Your Local                Remote (GitHub)
  ○ commit-3              ○ commit-5 ← You're behind!
  │                       │
  ○ commit-2              ○ commit-4
  │                       │
  ○ commit-1              ○ commit-3
                          │
                          ○ commit-2
                          │
                          ○ commit-1


  git push  → REJECTED! (Someone pushed new commits)
  
  Solution:
  1. git pull           (get latest)
  2. Resolve conflicts  (if any)
  3. git push           (now it works)


SCENARIO 3: Diverged History (Rebase Needed)

Your Local                Remote (GitHub)
  ○ my-commit-5           ○ their-commit-5
  │                       │
  ○ my-commit-4           ○ their-commit-4
  │                       │
  └───── commit-3 ────────┘ (same point)

  Branches diverged!

  git push  → REJECTED! (Histories diverged)
  
  Solution:
  1. git pull --rebase  (align with remote)
  2. Your commits replay on top
  3. git push           (now linear)
```

## 6. Pull Request Workflow

```
STEP 1: Push your branch to fork

Your Computer           Your Fork (GitHub)
├─ feature             
│  ├─ commit-5 ──────>  ├─ commit-5
│  ├─ commit-4          ├─ commit-4
│  └─ commit-3          └─ commit-3


STEP 2: Create Pull Request

Your Fork (GitHub)              Original Project (GitHub)
├─ main                         ├─ main
│  └─ commit-3                  │  └─ commit-3
│
└─ feature
   ├─ commit-5  ──PR REQUEST──> Accept merge?
   ├─ commit-4
   └─ commit-3


STEP 3: Code Review

Team Reviews:
  ✓ Is logic correct?
  ✓ Does it follow standards?
  ✓ Are there tests?
  
Comments:
  "Great! Just fix this line..."
  
You Update:
  git commit -m "Address review comments"
  git push


STEP 4: Approval & Merge

After approval:
  ✓ All checks pass
  ✓ Code reviewed
  ✓ Ready to merge!


STEP 5: Merge

Original Project (GitHub)
├─ main
│  ├─ merge commit (NEW!)
│  ├─ commit-5 (from PR)
│  ├─ commit-4 (from PR)
│  ├─ commit-3 (previous main)
│  └─ commit-2


STEP 6: Cleanup

Your Fork (GitHub)
├─ feature  DELETE ✗
│
└─ main
   └─ (synced with original)
```

---

[← Back to Section 7](README.md)
