# git flow vs trunk-based development

## 📋 Quick Comparison

| Aspect | Git Flow | Trunk-based |
|--------|---------|------------|
| **Branches** | Many (develop, release, hotfix) | Few (main, short-lived features) |
| **Complexity** | High | Low |
| **Release cycle** | Planned, scheduled | Continuous deployment |
| **Learning curve** | Steep | Gentle |
| **Team size** | Large teams | All sizes |
| **Best for** | Versioned releases | Continuous deployment |

## 📖 Git Flow Branches

```
main (production)
  ↑ (release branches)
develop
  ↑ (feature branches)
  feature/*, hotfix/*
```

## 📖 Trunk-based Development

```
main (always deployable)
  ↑ (short-lived feature branches)
  feature/*
```

## 💡 When to Use Each

**Git Flow when:**
- Scheduled releases
- Multiple versions in production
- Large teams

**Trunk-based when:**
- Continuous deployment
- Single version
- Small teams

---

[← Back to Section 9](../README.md) | [→ Next Topic](../startup-vs-enterprise-git/README.md)
