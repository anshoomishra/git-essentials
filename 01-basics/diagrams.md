# Visual Diagrams for Git Basics

## 1. Working Directory vs Staging Area vs Repository

### The Three States of Git

```
┌─────────────────────────────────────────────────────────────────┐
│                          YOUR WORKSPACE                         │
└─────────────────────────────────────────────────────────────────┘

    ┌─────────────────┐
    │  Working Dir    │    ← Files you edit (on disk)
    │   (Workspace)   │    ← Not tracked by Git yet
    │                 │
    │  • file.js      │
    │  • file.css     │
    └────────┬────────┘
             │
             │  git add
             ↓
    ┌─────────────────┐
    │  Staging Area   │    ← Changes ready to commit
    │   (Index)       │    ← "Shopping cart"
    │                 │
    │  • file.js ✓    │
    │  • file.css ✓   │
    └────────┬────────┘
             │
             │  git commit
             ↓
    ┌─────────────────┐
    │   Repository    │    ← Saved history (.git folder)
    │    (.git)       │    ← Your commits
    │                 │
    │  Commit 1 ✓     │
    │  Commit 2 ✓     │
    │  Commit 3 ✓     │
    └─────────────────┘
```

## 2. Untracked vs Tracked Files

```
File Lifecycle:

┌──────────────────────────────────────────────────────────┐
│                                                          │
│  Untracked          Staged              Committed       │
│  ───────────────────────────────────────────────────────│
│                                                          │
│  new-file.js  ──git add──>  Staged  ──git commit──>  .git
│  (ignored)                  (ready)                  (history)
│                                                          │
└──────────────────────────────────────────────────────────┘

.gitignore controls which files Git notices:

  ├─ file.js              ← Tracked (in Git)
  ├─ style.css            ← Tracked (in Git)
  ├─ node_modules/        ← Untracked (in .gitignore)
  ├─ .env                 ← Untracked (in .gitignore)
  └─ build/               ← Untracked (in .gitignore)
```

## 3. git init vs git clone

```
SCENARIO 1: Starting New Project (git init)

    You ──git init──> Creates .git folder
    
    your-project/
    ├── .git/            ← Empty repository created
    ├── file.js
    └── README.md

    ┌─────────────┐
    │ .git folder │ ← Local only, no remote
    └─────────────┘


SCENARIO 2: Joining Existing Project (git clone)

    GitHub                    Your Machine
    ┌──────────────┐         ┌──────────────┐
    │  Repository  │ ──────> │  Your Repo   │
    │ (Full History)│ clone  │ (Full Sync)  │
    └──────────────┘         └──────────────┘
                             ├── .git/       ← Full history
                             ├── file.js
                             └── README.md

    .git/origin (remote) is automatically configured
```

## 4. git status vs git diff

```
Workflow visualization:

┌─ Git Status: OVERVIEW ─┐     ┌─ Git Diff: DETAIL ─┐
│                        │     │                    │
│ On branch main         │     │ --- file.js        │
│ Changes not staged:    │     │ +++ file.js        │
│                        │     │                    │
│ modified: file.js      │ ──> │  function hello() {│
│ modified: style.css    │     │ -  return "old"    │
│ Untracked: temp.js     │     │ +  return "new"    │
│                        │     │  }                 │
└────────────────────────┘     └────────────────────┘

  ↑ What changed?            ↑ How did it change?
  (file names)               (line by line)
```

## 5. Complete Git Workflow

```
                  Your Local Repository
        ┌─────────────────────────────────┐
        │                                 │
        │  ┌──────────────────────────┐   │
        │  │   Working Directory      │   │
        │  │ (untracked: red.js)      │   │
        │  └───────────┬──────────────┘   │
        │              │ git add           │
        │              ↓                   │
        │  ┌──────────────────────────┐   │
        │  │   Staging Area (Index)   │   │
        │  │ (staged: red.js ✓)       │   │
        │  └───────────┬──────────────┘   │
        │              │ git commit        │
        │              ↓                   │
        │  ┌──────────────────────────┐   │
        │  │   Repository (.git)      │   │
        │  │ commit: abc123 ✓         │   │
        │  │ commit: def456 ✓         │   │
        │  │ commit: ghi789 ✓         │   │
        │  └──────────┬───────────────┘   │
        │             │ git push           │
        │             ↓                    │
        └─────────────┼────────────────────┘
                      │
                      ↓
              Remote Repository (GitHub)
              ┌──────────────────────┐
              │ Your Code Saved!     │
              │ Backed up & Shared   │
              └──────────────────────┘
```

---

[← Back to Section 1](README.md)
