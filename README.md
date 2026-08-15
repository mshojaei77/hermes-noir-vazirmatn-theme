# Noir — Vazirmatn for Hermes Desktop

A calm, Apple-inspired dark theme for Hermes Desktop with Vazirmatn typography and close charcoal surface layering.

## Features

- Deep neutral dark surfaces
- Restrained blue accent (`#5E9EFF`)
- High-readability warm-white text
- Soft deep-blue user-message treatment
- Persian-friendly Vazirmatn font stack
- Minimal hairline borders
- Designed for long Hermes sessions

This theme uses Hermes' supported `DesktopTheme` plugin API. It approximates a refined dark desktop aesthetic through tonal layering; the plugin does not claim to add unsupported global blur, refraction, or motion-reactive highlights.

## Install

Hermes loads disk plugins from `$HERMES_HOME/desktop-plugins/<id>/plugin.js`. The repository folder and plugin ID are both `noir-vazirmatn`.

### macOS / Linux

```bash
git clone https://github.com/mshojaei77/hermes-noir-vazirmatn-theme.git \\
  "${HERMES_HOME:-$HOME/.hermes}/desktop-plugins/noir-vazirmatn"
```

### Windows PowerShell

```powershell
git clone https://github.com/mshojaei77/hermes-noir-vazirmatn-theme.git `
  "$env:LOCALAPPDATA\hermes\desktop-plugins\noir-vazirmatn"
```

If your Hermes home is customized, replace the destination with your actual `$HERMES_HOME` path.

Then open Hermes Desktop and, if it has not hot-reloaded automatically:

1. Press `Ctrl+K`.
2. Run **Reload desktop plugins**.
3. Open **Settings → Appearance**.
4. Select **Noir — Vazirmatn**.

### Optional installers

The repository also includes `install.sh` and `install.ps1`. Inspect them before running; they clone or fast-forward this repository into the standard plugin directory.

## Update

### macOS / Linux

```bash
cd "${HERMES_HOME:-$HOME/.hermes}/desktop-plugins/noir-vazirmatn"
git pull --ff-only
```

### Windows PowerShell

```powershell
Set-Location "$env:LOCALAPPDATA\hermes\desktop-plugins\noir-vazirmatn"
git pull --ff-only
```

## Uninstall

Remove the cloned `noir-vazirmatn` directory from your Hermes desktop-plugins directory. For example:

```powershell
Remove-Item -Recurse -Force "$env:LOCALAPPDATA\hermes\desktop-plugins\noir-vazirmatn"
```

```bash
rm -rf "${HERMES_HOME:-$HOME/.hermes}/desktop-plugins/noir-vazirmatn"
```

## Compatibility

- Hermes Desktop: Desktop Plugin SDK with `THEMES_AREA`
- Tested host: Windows 11
- Verification performed: JavaScript syntax validation and schema review against the installed Hermes Desktop source
- macOS/Linux: not runtime-tested by this repository release

## Screenshots

Screenshots are not included until captured from a real Hermes Desktop session using this theme. This avoids publishing fabricated or unverified visual evidence. Add captures under `screenshots/` when available.

## License

MIT. See [LICENSE](LICENSE).
