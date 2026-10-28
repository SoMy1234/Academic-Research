# ARS-Codex integration

Source: https://github.com/Imbad0202/academic-research-skills-codex

The full **academic-research-suite** (currently v3.24.0) is a large skill package, not a standalone SKILL.md. It includes agents, workflows, references, scripts, and templates. Its license is **CC BY-NC 4.0**, which requires attribution and restricts commercial use.

## Option A: Install directly in Codex (recommended)

Follow the upstream README:

```bash
codex plugin marketplace add Imbad0202/academic-research-skills-codex --ref main
codex plugin add ars-codex@ars-codex
```

Start a fresh Codex conversation, then try `$academic-research-suite`.

## Option B: Vendor the complete skill into this repository

Run from a locally cloned copy of this repository on Windows:

```powershell
./scripts/install-ars-codex.ps1
git status
git add .agents/skills
git commit -m "Add ARS-Codex skill suite"
git push
```

The script sparse-clones the upstream package, copies the **complete** `skills/academic-research-suite/` directory into `.agents/skills/academic-research-suite/`, and preserves the upstream license. Review all scripts and source licenses before running or redistributing. Installing into a local checkout does **not** publish the files to GitHub until you commit and push them.

For reproducibility, you may prefer to pin a reviewed upstream commit instead of following `main`. The upstream package is independently maintained; review updates before adopting them.

## Notes

- This pull request adds a reproducible installer and documentation, **not** the 2,657 vendored skill files themselves.
- The source version and any dependencies must be checked when installing.
- If you use another operating system, follow the upstream native Codex installation or adapt the script.
