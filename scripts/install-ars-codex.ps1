# Install the complete ARS-Codex suite into this Git repository.
# Requirements: Git and PowerShell 7+ (or Windows PowerShell 5.1).
# Run from the repository root: ./scripts/install-ars-codex.ps1
$ErrorActionPreference = 'Stop'
$repoRoot = (Resolve-Path (Join-Path $PSScriptRoot '..')).Path
$target = Join-Path $repoRoot '.agents/skills/academic-research-suite'
if (Test-Path $target) { throw "Target already exists: $target. Back it up or remove it before reinstalling." }
$temp = Join-Path ([IO.Path]::GetTempPath()) ("ars-codex-" + [Guid]::NewGuid().ToString('N'))
try {
  git clone --depth 1 --filter=blob:none --sparse https://github.com/Imbad0202/academic-research-skills-codex.git $temp
  if ($LASTEXITCODE -ne 0) { throw 'Could not clone upstream repository' }
  git -C $temp sparse-checkout set skills/academic-research-suite
  if ($LASTEXITCODE -ne 0) { throw 'Sparse checkout failed' }
  $src = Join-Path $temp 'skills/academic-research-suite'
  if (-not (Test-Path (Join-Path $src 'SKILL.md'))) { throw 'Upstream SKILL.md not found' }
  $parent = Split-Path $target -Parent
  New-Item -ItemType Directory -Path $parent -Force | Out-Null
  Copy-Item -Path $src -Destination $target -Recurse
  Copy-Item -Path (Join-Path $temp 'LICENSE') -Destination (Join-Path $target 'LICENSE-ARS-Codex.txt')
  Write-Host "Installed into $target"
  Write-Host 'Review the upstream license, changes, and bundled scripts before committing.'
  Write-Host 'To publish: git add .agents/skills; git commit -m "Add ARS-Codex skill suite"; git push'
}
finally {
  if (Test-Path $temp) { Remove-Item $temp -Recurse -Force }
}
