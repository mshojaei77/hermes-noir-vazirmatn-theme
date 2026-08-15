$ErrorActionPreference = 'Stop'

$repoUrl = 'https://github.com/mshojaei77/hermes-liquid-noir-theme.git'
$hermesHome = if ($env:HERMES_HOME) { $env:HERMES_HOME } else { Join-Path $env:LOCALAPPDATA 'hermes' }
$destination = Join-Path $hermesHome 'desktop-plugins\liquid-noir'

New-Item -ItemType Directory -Force -Path (Split-Path -Parent $destination) | Out-Null

if (Test-Path (Join-Path $destination '.git')) {
    git -C $destination pull --ff-only
} else {
    git clone $repoUrl $destination
}

Write-Host "Installed Liquid Noir at $destination"
Write-Host 'Open Hermes Desktop, then run Ctrl+K -> Reload desktop plugins if needed.'
