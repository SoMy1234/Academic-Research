# Norman Skills

This project includes all five Norman Skills through a pinned Git submodule at `.agents/skills`, the project skill directory. The complete upstream folders, platform executables, documentation, and attribution are preserved.

Upstream: [N-tongxue/norman-skill](https://github.com/N-tongxue/norman-skill)  
Pinned revision: [cae78d0fc7163a8d838dc2275ea1236eb3cf4333](https://github.com/N-tongxue/norman-skill/commit/cae78d0fc7163a8d838dc2275ea1236eb3cf4333)

| Skill | Version | Purpose |
| --- | --- | --- |
| norman-fig2ppt | 1.3.1 | Rebuild scientific figures as editable PowerPoint objects |
| norman-humanize | 1.3.2 | Edit Chinese and English prose, including Word tracked changes |
| norman-paper-reading | 1.4.0 | Read papers, inspect evidence and figures, and develop research plans |
| norman-paper2ppt | 1.1.0 | Turn papers into research presentations |
| norman-research-idea | 2.0.0 | Develop and challenge evidence-grounded research ideas |

## Get a complete checkout

For a new checkout:

```bash
git clone --recurse-submodules https://github.com/SoMy1234/Academic-Research.git
cd Academic-Research
```

For an existing checkout:

```bash
git pull --ff-only
git submodule update --init --recursive
```

A plain clone without initializing submodules does not contain the skill files. The complete upstream distribution is approximately 791 MiB. The submodule pins a reviewed revision; upstream updates do not silently change this project.

## Use the skills

Open the repository in a client that discovers project skills from `.agents/skills`. Each skill folder contains its own `SKILL.md` and complete platform programs. Clients with a different skill location should follow their own installation instructions and import complete skill folders.

Example requests:

- `Use $norman-paper-reading to analyze this paper.`
- `Use $norman-paper2ppt to prepare a research presentation from this PDF.`
- `Use $norman-fig2ppt to rebuild this figure as editable PowerPoint objects.`
- `Use $norman-humanize to edit this text while preserving its facts and voice.`
- `Use $norman-research-idea to explore this research question.`

Read each skill's instructions and use the executable matching the actual operating system and CPU. Four skills include Linux x64 and ARM64 programs. **norman-paper-reading currently includes Windows and macOS programs only**; its workflow permits host PDF extraction and rendering, but it has no native Linux helper in this upstream revision. Presentation generation also needs the host client's AI/image tools and a suitable presentation backend and renderer. Live literature research needs the host client's search tools.

## Attribution and updates

Norman Skills are created by **N同学** (Xiaohongshu: N同学; Bilibili/Douyin: 耐心的N同学). Original notices remain in the upstream submodule. No repository-wide license was declared at the pinned revision; this integration does not add or imply a new license for the upstream work.

Review proposed changes through a pull request before merging into `main`, as required by this repository's existing policy. When updating the submodule, inspect the new upstream revision, recheck all skill versions and platform requirements, and update this page in the same pull request.
