# Commits, Changelog & SemVer Cheatsheet

## Links
- Conventional Commits: https://www.conventionalcommits.org/en/v1.0.0/  
- Keep a Changelog: https://keepachangelog.com/en/1.0.0/  
- Semantic Versioning: https://semver.org/spec/v2.0.0.html

---

## Conventional Commits (format)
Format:
```
<type>(<scope>)?: <subject>
[BLANK LINE]
[body]
[BLANK LINE]
<footer>
```
Rules:
- type: feat, fix, docs, style, refactor, perf, test, chore, build, ci, revert
- scope: optional, short
- subject: imperative, lowercase, no trailing period
- footer: meta (e.g., Closes #123) or BREAKING CHANGE: description

Examples:
```
feat(parser): add support for nested arrays
fix(api): correct 500 on bad input
refactor(auth): simplify token logic
feat!: change auth flow (BREAKING CHANGE: tokens revoked)
```

Mapping to SemVer:
- feat → MINOR (adds functionality, backward-compatible)
- fix → PATCH (bug fix, backward-compatible)
- BREAKING CHANGE or `!` → MAJOR

Tools: commitlint, husky, semantic-release, conventional-changelog

---

## Keep a Changelog (structure)
Recommended sections per version:
- Unreleased
- [x.y.z] - YYYY-MM-DD

Common categories:
- Added, Changed, Deprecated, Removed, Fixed, Security

Template:
```
## [Unreleased]
### Added
- New feature X

### Fixed
- Bug Y

## [1.2.0] - 2026-03-02
### Added
- ...
```