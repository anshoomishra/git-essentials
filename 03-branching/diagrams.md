# Visual Diagrams for Branching

## 1. What are Branches?

```
A Branch = Pointer to a Commit

main branch                 feature branch
     ↓                            ↓
   c5a7                        f2e1
     │                           │
     └── Commit History ────────┘

Commits:
    HEAD → main
      ↓
    ○ c5a7 (main)
    │
    ○ 9f3b
    │
    ○ 3e2d
    │
    ○ 1a4c (feature)
    │
    ○ root
```

## 2. Creating a Branch

```
BEFORE:

    main
      ↓
    ○ HEAD → commit c5a7
    │ 
    ○ 9f3b
    │
    ○ root


AFTER: git branch feature

    main      feature
      ↓        ↓
    ○ HEAD → commit c5a7  (both point here)
    │ 
    ○ 9f3b
    │
    ○ root
```

## 3. Switching Branches

```
git checkout feature  (or git switch feature)

BEFORE:                     AFTER:

  main    feature            main    feature
    ↓       ↓                  ↓       ↓
  ○ ─ ─ ─ ○ commit           ○       ○ commit
    HEAD                                HEAD


Now commits you make go on the feature branch:

  main    feature
    ↓       ↓
  ○ ... ○ commit
        │
        ○ new commit (feature-only)
        
        HEAD ↓
```

## 4. Branch-Feature Workflow

```
Step 1: Create feature branch
git branch feature-login

    main         feature-login
      ↓             ↓
    ○ c5a7 ←─────── (same commit)


Step 2: Switch to feature branch
git switch feature-login

    main         feature-login
      ↓             ↓
    ○ c5a7         
    
    HEAD ──> feature-login


Step 3: Make commits on feature branch
git commit -m "Add login form"

    main         feature-login
      ↓             ↓
    ○ c5a7         ○ new1 (login form)
                   │
                   ○ c5a7 (shared history)


Step 4: More commits on feature
git commit -m "Add validation"

    main         feature-login
      ↓             ↓
    ○ c5a7         ○ new2 (validation)
                   │
                   ○ new1 (login form)
                   │
                   ○ c5a7 (shared history)


Step 5: Switch back to main
git switch main

    main         feature-login
      ↓             ↓
    ○ c5a7         ○ new2
    
    HEAD ──> main  │
                   ○ new1
                   │
                   ○ c5a7


Step 6: Merge feature into main
git merge feature-login

    main           feature-login
      ↓                ↓
    ○ merge commit  ○ new2
    │               │
    ├─ ○ c5a7  ─────┤
    │  │             │
    │  └─ new1 ─────┘
```

## 5. Multiple Branches Visualization

```
Timeline of work:

                  main branch
                      ↓
    ○─────────────────○ commit5
    │                 │
    │  feature-A      │
    │  ↓              │
    ├─○ commit2       │
    │ │               │
    │ └─ commit3      │
    │                 │
    │  feature-B      │
    │  ↓              │
    ├─○ commit4       │
    │ │               │
    │ └─ wip          │
    │                 │
    ○─────────────────○ root
```

## 6. Long-lived vs Short-lived Branches

```
LONG-LIVED BRANCHES (Protected):

    main (production)
      ↓
    ○─────────────────────────────────○
    │    ↑ Always here                │
    │    ├─ Code review required      │
    │    ├─ CI/CD checks              │
    │    └─ Never force push          │

    develop (staging)
      ↓
    ○─────────────────────────────────○
    │    Shared by team               │
    │    Protected rules              │


SHORT-LIVED BRANCHES (Temporary):

    feature/login
      ↓
    ○─────────────┐
    │ (days/hours)│
    │ Locally only│
    │ or short PR │
    └─────────────→ ✓ MERGE → DELETED
                    (after PR closes)

    hotfix/critical-bug
      ↓
    ○──────┐
    │      │
    └──────→ ✓ MERGE → DELETED
```

## 7. Branch Naming Convention

```
Good branch names follow patterns:

    feature/user-authentication
    ├─ feature/     ← Type
    └─ user-auth    ← Description
    
    
    bugfix/login-error
    ├─ bugfix/      ← Type
    └─ login-error  ← Description


    hotfix/critical-security
    ├─ hotfix/      ← Type
    └─ security     ← Description


    refactor/database-queries
    ├─ refactor/    ← Type
    └─ queries      ← Description
```

---

[← Back to Section 3](README.md)
