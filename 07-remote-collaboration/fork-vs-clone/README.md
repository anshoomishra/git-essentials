# fork vs clone

## 📋 Quick Comparison

| Aspect | Fork | Clone |
|--------|------|-------|
| **What it does** | Creates your own copy on GitHub | Downloads repository to your computer |
| **Location** | Server (GitHub/GitLab) | Your local machine |
| **Ownership** | You own the fork | Remote repository owner |
| **Use case** | Contributing to others' projects | Getting code locally |
| **Connection to original** | Maintains link | Just references origin |

## 🧠 Mental Model

- **Fork** = Start your own restaurant chain based on someone's recipe
- **Clone** = Copy their recipe to your kitchen

## 📖 Detailed Explanation

### Fork

Creates a separate copy of a repository under your account on GitHub (or GitLab, etc.).

```bash
# On GitHub: Click "Fork" button
# Results in: github.com/yourname/project
```

### Clone

Downloads a repository from a remote server to your local machine.

```bash
git clone https://github.com/yourname/project.git
# Downloads to your computer
```

## 🔄 Full Open Source Contribution Workflow

1. **Fork** the project on GitHub (creates your copy)
2. **Clone** your fork to your machine
3. Create a feature branch
4. Make changes and commit
5. Push to your fork
6. Submit a pull request to the original project

---

[← Back to Section 7](../README.md) | [→ Next Topic](../origin-vs-upstream/README.md)
