# Interview Questions on Git

Prepare for Git-related interview questions at any level.

## 🔰 Junior Level

### 1. Explain the difference between `git init` and `git clone`

**What they're testing:** Understanding basic Git concepts

**Good answer:**
- `git init` creates a new, empty repository locally
- `git clone` copies an existing repository from a remote source
- Use init when starting a new project, clone when joining an existing one

### 2. What's the purpose of the staging area?

**What they're testing:** Understanding Git's workflow

**Good answer:**
- The staging area lets you choose which changes to include in a commit
- Allows you to review changes before committing
- Enables logical grouping of related changes

### 3. What does `git status` show you?

**What they're testing:** Day-to-day Git knowledge

**Good answer:**
- Modified files (both staged and unstaged)
- Untracked files
- Current branch
- Commits ahead/behind remote

### 4. What's the difference between `git add` and `git commit`?

**What they're testing:** Understanding commit workflow

**Good answer:**
- `git add` stages changes for the next commit
- `git commit` saves staged changes to the repository
- You can stage multiple files, then commit them together

## 🌱 Mid Level

### 5. Explain `git merge` vs `git rebase`

**What they're testing:** Understanding branching strategies and history

**Good answer:**
- Merge creates a merge commit, showing the branch history
- Rebase replays commits on top of another branch, creating linear history
- Use merge on shared branches, rebase on private branches
- Each has trade-offs between clarity and cleanliness

### 6. When would you use `git reset` vs `git revert`?

**What they're testing:** Understanding undo operations and history

**Good answer:**
- Use reset to undo unpushed commits locally
- Use revert to undo pushed commits (creates new commit)
- Reset changes history, revert preserves it
- Three modes: soft (keeps changes staged), mixed (keeps changes unstaged), hard (discards)

### 7. What's the difference between `git fetch` and `git pull`?

**What they're testing:** Understanding remote operations

**Good answer:**
- Fetch downloads updates but doesn't merge them
- Pull fetches and merges automatically
- Fetch is safer - lets you review before merging
- Pull is convenient but can cause unwanted merges

### 8. Explain the difference between a branch and a tag

**What they're testing:** Understanding Git objects

**Good answer:**
- Branches are pointers to commits that move forward
- Tags are fixed labels for specific commits
- Use branches for ongoing development
- Use tags for releases/milestones

## 🔥 Senior Level

### 9. Describe a conflict resolution scenario

**What they're testing:** Real-world Git problem-solving

**Good answer:**
- Explain how conflicts occur (both modified same lines)
- Show understanding of manual resolution
- Mention merge tools
- Discuss prevention strategies
- Know when to involve team members

### 10. When would you use `git cherry-pick`?

**What they're testing:** Advanced Git knowledge

**Good answer:**
- To apply specific commits from one branch to another
- Use in hotfixes (cherry-pick from develop to main)
- Use when you need selected commits, not full merge
- Remember it creates new commits (doesn't move them)

### 11. Explain your ideal Git workflow

**What they're testing:** Experience and opinions on best practices

**Good answer:**
- Mention: feature branches, code review, CI/CD
- Discuss: trunk-based vs Git flow (know pros/cons)
- Talk about: commit messages, history cleanliness
- Understand: team collaboration implications

### 12. How would you handle a mistake where you force pushed bad commits?

**What they're testing:** Crisis management and deep Git knowledge

**Good answer:**
- Use `git reflog` to find the commit before the mistake
- Explain `git reset --hard` to that point
- Note that it requires coordination with team
- Discuss prevention: branch protection rules, code review
- Mention that this is why you shouldn't force push shared branches

### 13. What's the difference between rebase on a private branch vs shared branch?

**What they're testing:** Understanding Git etiquette and best practices

**Good answer:**
- Rebase is safe on branches only you use
- On shared branches, rebase breaks everyone else's work
- Use merge on shared branches instead
- History rewriting is destructive in multi-developer scenarios

### 14. Explain monorepo vs multi-repo Git strategies

**What they're testing:** Architectural thinking

**Good answer:**
- Monorepo: Single repo with multiple projects
- Multi-repo: Separate repo for each project
- Monorepo pros: Easier refactoring, shared deps
- Monorepo cons: Harder to manage, larger history
- Multi-repo pros: Clear boundaries, independent releases
- Multi-repo cons: Harder to keep in sync

## 💻 Scenario Questions

### Scenario 1: You committed sensitive data to main

**Setup:** You accidentally committed an API key to the main branch and it's already been pushed

**Your answer should include:**
1. Recognize the urgency
2. Rotate the API key immediately
3. Use `git filter-repo` or `git filter-branch` to remove it
4. Force push (with team awareness)
5. Inform the team
6. Set up pre-commit hooks to prevent future incidents

### Scenario 2: Two team members merged conflicting PRs

**Setup:** Two feature branches modified the same file, first merged cleanly, second has massive conflicts

**Your answer should include:**
1. Explain what happened (both changed same lines)
2. Discuss options: manual merge, revert first + reapply second
3. Communication with team members
4. Code review of the resolution
5. Prevent future: better code organization, smaller PRs

### Scenario 3: Your feature branch is 50 commits behind main

**Setup:** You've been working on a feature for 3 weeks, main has moved forward significantly

**Your answer should include:**
1. Pull latest main
2. Decide: rebase or merge
3. If rebase: `git rebase main` then force push to feature branch
4. If merge: `git merge main` then regular push
5. Discuss with team which is preferred in your workflow

## ⭐ Tips for Interview

1. **Be clear about trade-offs** - Every Git operation has pros and cons
2. **Think about collaboration** - Show you understand team impacts
3. **Ask for clarification** - "Are we talking about shared or private branches?"
4. **Give examples** - Concrete scenarios are more impressive than abstractions
5. **Mention alternatives** - "You could also..." shows depth
6. **Know your team's practices** - Research the company's Git workflow if possible

---

[← Back to Resources](README.md)
