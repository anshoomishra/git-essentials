"# Git VS Series – Complete Practical Guide

> Understand Git by comparing concepts, not memorizing commands

## 🎯 About This Series

This repository contains a complete Git learning syllabus explained using "VS" comparisons — the most effective way to truly understand Git internals.

Each topic is explained with:

✅ Clear mental model

✅ Step-by-step examples

✅ Real-world & production scenarios

✅ Interview-ready explanations

✅ Common mistakes & recovery tips

### This series is ideal for:

- Beginners who feel Git is confusing
- Working developers who "use Git but don't understand it"
- Interview preparation (Junior → Senior level)
- Open-source contributors

## 🧠 Teaching Philosophy

**Git is not hard — bad explanations are.**

This course focuses on:

- Why a command exists
- What problem it solves
- When NOT to use it

## 📚 Complete Syllabus (VS Based)

### 🔰 SECTION 1: Git Basics (Foundation)

- `git init` vs `git clone`
- working directory vs staging area vs repository
- `git status` vs `git diff`
- tracked vs untracked files

### 🌱 SECTION 2: Commit & History

- `git add` vs `git commit`
- `git commit` vs `git commit -a`
- `git log` vs `git reflog`
- amend commit vs new commit

### 🌿 SECTION 3: Branching (MOST IMPORTANT)

- `git branch` vs `git checkout`
- `git checkout` vs `git switch`
- feature branch vs main branch
- long-lived vs short-lived branches

### 🔥 SECTION 4: Merge & Rebase (CORE CONCEPTS)

- `git merge` vs `git rebase` ⭐
- fast-forward merge vs non fast-forward merge
- merge commit vs linear history
- rebase interactive vs normal rebase
- squash merge vs rebase merge

### 🧹 SECTION 5: Undo & Recovery

- `git reset` vs `git revert` ⭐
- `git reset --soft` vs `--mixed` vs `--hard`
- `git checkout` file vs `git restore`
- `git clean` vs `git reset --hard`

### 📦 SECTION 6: Stash & Temporary Work

- `git stash` vs `git commit`
- stash pop vs stash apply
- stash vs WIP commit

### 🌍 SECTION 7: Remote & Collaboration

- `git fetch` vs `git pull` ⭐
- `git fetch` vs `git rebase`
- origin vs upstream
- fork vs clone ⭐
- pull request vs merge

### ⚔️ SECTION 8: Advanced & Real World

- `git cherry-pick` vs `git merge`
- monorepo vs multi-repo
- squash commits vs preserve commits
- force push vs normal push
- rebase conflict vs merge conflict

### 🏗️ SECTION 9: Team & Production Workflows

- Git flow vs trunk-based development
- rebase in private branch vs shared branch
- Git in startups vs enterprises
- Git for microservices vs monolith

## 📖 How to Use This Repository

1. Start with **SECTION 1** to build a strong foundation
2. Each folder contains:
   - `README.md` - Detailed explanation with mental models
   - `diagrams.md` - Visual ASCII presentations (available in key sections)
   - `examples.sh` - Step-by-step bash examples
3. Follow the examples in order
4. Practice with your own repository
5. Reference the recovery cheatsheet when you make mistakes
6. See [DIAGRAMS_INDEX.md](DIAGRAMS_INDEX.md) for complete visual guide

## 🗂️ Folder Structure

```
git-vs-series/
│
├── README.md (this file)
│
├── 01-basics/
│   ├── init-vs-clone/
│   ├── status-vs-diff/
│   └── tracked-vs-untracked/
│
├── 02-commits-history/
│   ├── add-vs-commit/
│   ├── commit-vs-commit-a/
│   ├── log-vs-reflog/
│   └── amend-vs-new-commit/
│
├── 03-branching/
│   ├── branch-vs-checkout/
│   ├── checkout-vs-switch/
│   └── long-vs-short-lived-branches/
│
├── 04-merge-rebase/
│   ├── merge-vs-rebase/
│   ├── fast-forward-vs-non-ff/
│   ├── squash-vs-rebase-merge/
│   └── interactive-rebase/
│
├── 05-undo-recovery/
│   ├── reset-vs-revert/
│   ├── soft-vs-mixed-vs-hard/
│   ├── restore-vs-checkout/
│   └── clean-vs-reset-hard/
│
├── 06-stash/
│   ├── stash-vs-commit/
│   ├── pop-vs-apply/
│   └── stash-vs-wip/
│
├── 07-remote-collaboration/
│   ├── fetch-vs-pull/
│   ├── fork-vs-clone/
│   ├── origin-vs-upstream/
│   └── pr-vs-merge/
│
├── 08-advanced/
│   ├── cherry-pick-vs-merge/
│   ├── force-push-vs-push/
│   └── monorepo-vs-multirepo/
│
├── 09-workflows/
│   ├── gitflow-vs-trunk/
│   ├── startup-vs-enterprise-git/
│   └── microservices-git-strategy/
│
└── resources/
    ├── common-mistakes.md
    ├── interview-questions.md
    └── recovery-cheatsheet.md
```

## ⭐ Key Topics (Start Here)

The most important concepts to master:
1. `git merge` vs `git rebase` - [04-merge-rebase/](04-merge-rebase/)
2. `git reset` vs `git revert` - [05-undo-recovery/](05-undo-recovery/)
3. `git fetch` vs `git pull` - [07-remote-collaboration/](07-remote-collaboration/)
4. fork vs clone - [07-remote-collaboration/](07-remote-collaboration/)

## 🎓 Learning Path

```
Beginner (Week 1)
  ↓
Sections 1-3: Basics, Commits, Branching
  ↓
Intermediate (Week 2)
  ↓
Sections 4-6: Merge/Rebase, Undo, Stash
  ↓
Advanced (Week 3)
  ↓
Sections 7-9: Remote, Advanced, Workflows
```

## 🤝 Contributing

Contributions are welcome! Please follow the VS-based comparison format.

## 📝 License

This repository is open for learning and reference purposes.

---

**Ready to master Git? Let's start with [Section 1: Git Basics](01-basics/README.md)!**
" 
