$ErrorActionPreference = 'Stop'

$repoUrl = 'https://github.com/mshojaei77/hermes-noir-vazirmatn-theme.git'
$hermesHome = if ($env:HERMES_HOME) { $env:HERMES_HOME } else { Join-Path $env:LOCALAPPDATA 'hermes' }
$pluginId = 'noir-vazirmatn'
$destination = Join-Path $hermesHome "desktop-plugins\$pluginId"
$parent = Split-Path -Parent $destination

if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    throw 'Git was not found. Install Git for Windows, reopen PowerShell, and run this installer again.'
}

New-Item -ItemType Directory -Force -Path $parent | Out-Null

if (Test-Path (Join-Path $destination '.git')) {
    Write-Host "Updating existing Git checkout: $destination"
    git -C $destination pull --ff-only
} elseif (Test-Path $destination) {
    $stamp = Get-Date -Format 'yyyyMMdd-HHmmss'
    $backup = "$destination.backup-$stamp"
    Write-Host "Existing non-Git plugin folder found. Moving it to: $backup"
    Move-Item -LiteralPath $destination -Destination $backup

    try {
        git clone $repoUrl $destination
    } catch {
        if (-not (Test-Path $destination)) {
            Move-Item -LiteralPath $backup -Destination $destination
        }
        throw
    }
} else {
    Write-Host "Installing $pluginId to: $destination"
    git clone $repoUrl $destination
}

$pluginFile = Join-Path $destination 'plugin.js'
if (-not (Test-Path $pluginFile)) {
    throw "Installation completed without plugin.js at $pluginFile"
}

Write-Host ''
Write-Host "Installed Noir - Vazirmatn at: $destination" -ForegroundColor Green
Write-Host 'Next: open Hermes Desktop, press Ctrl+K, run Reload desktop plugins, then choose Noir - Vazirmatn in Settings > Appearance.'
