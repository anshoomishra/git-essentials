# monorepo vs multi-repo

## 📋 Quick Comparison

| Aspect | Monorepo | Multi-repo |
|--------|---------|-----------|
| **Structure** | All projects in one repo | Separate repos |
| **Refactoring** | Easy across projects | Harder (coordinates) |
| **Independence** | Less | More |
| **History** | Shared | Separate |
| **CI/CD** | Complex | Simple per repo |
| **Team size** | Better for large teams | Better for small |

## 📖 Examples

**Monorepo:**
```
project/
├── frontend/
├── backend/
├── shared/
└── mobile/
```

**Multi-repo:**
```
project-frontend/
project-backend/
project-shared/
project-mobile/
```

## 💡 When to Use Each

**Monorepo when:**
- Large organization
- Shared libraries
- Frequent cross-project changes

**Multi-repo when:**
- Independent teams
- Different deployment cycles
- Clear project boundaries

---

[← Back to Section 8](../README.md) | [→ Next Section: Workflows](../../09-workflows/README.md)
