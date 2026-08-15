# Noir — Vazirmatn for Hermes Desktop

A dark Hermes Desktop theme with neutral charcoal surfaces, restrained blue accents, high-contrast text, and Vazirmatn typography for Persian and Arabic text.

This is a **Hermes Desktop plugin**. It does not modify Hermes files, `app.asar`, or compiled CSS.

## What you get

- Dark charcoal interface surfaces
- Restrained blue accents
- High-contrast warm-white text
- Vazirmatn for normal interface text
- JetBrains Mono/Cascadia Code retained for code and terminal text
- A normal theme-picker entry named **Noir — Vazirmatn**

The theme uses Hermes' supported disk-plugin API. It does not add compositor-level blur, refraction, or animated glass effects.

## Requirements

- Hermes **Desktop**, not only the CLI or gateway
- Windows, macOS, or Linux
- Git available in your terminal

The plugin is a plain JavaScript file. No Node.js installation, npm install, Python environment, or build step is required.

## Quick install — Windows

This is the recommended method for most Windows users.

### 1. Open PowerShell

Open the Start menu, search for **PowerShell**, and open it.

### 2. Run the installer

Copy and paste this entire command, then press Enter:

```powershell
& ([scriptblock]::Create((irm https://raw.githubusercontent.com/mshojaei77/hermes-noir-vazirmatn-theme/main/install.ps1)))
```

The installer uses Hermes' real local home. On a standard Windows installation that is:

```text
C:\Users\<your-user>\AppData\Local\hermes
```

It installs the plugin at:

```text
C:\Users\<your-user>\AppData\Local\hermes\desktop-plugins\noir-vazirmatn
```

Do not install it under `AppData\Roaming\Hermes`; that is Hermes Desktop's Electron user-data directory, not the plugin home.

### 3. Reload the plugin

1. Open Hermes Desktop.
2. Press `Ctrl+K`.
3. Search for **Reload desktop plugins** and run it.
4. Open **Settings → Appearance**.
5. Select **Noir — Vazirmatn**.

If Hermes was already open while you installed the plugin, fully close and reopen Hermes once after the reload command.

## Manual Windows installation

Use this if you prefer to inspect the commands instead of running the installer:

```powershell
$hermesHome = if ($env:HERMES_HOME) { $env:HERMES_HOME } else { "$env:LOCALAPPDATA\hermes" }
$destination = Join-Path $hermesHome 'desktop-plugins\noir-vazirmatn'
git clone https://github.com/mshojaei77/hermes-noir-vazirmatn-theme.git $destination
```

If the destination already exists, use the installer instead. It safely handles an existing installation.

## macOS and Linux

Open a terminal and run:

```bash
curl -fsSL https://raw.githubusercontent.com/mshojaei77/hermes-noir-vazirmatn-theme/main/install.sh | bash
```

The installer uses `${HERMES_HOME}` when set, otherwise the standard `~/.hermes` location. It installs to:

```text
${HERMES_HOME:-$HOME/.hermes}/desktop-plugins/noir-vazirmatn
```

Then open Hermes Desktop, run **Reload desktop plugins** from the command palette, and choose **Noir — Vazirmatn** under **Settings → Appearance**.

## If the theme does not appear

Check these items in order:

1. Confirm that you are using **Hermes Desktop**, not only the Hermes CLI.
2. Confirm that this file exists:
   - Windows: `$env:LOCALAPPDATA\hermes\desktop-plugins\noir-vazirmatn\plugin.js`
   - macOS/Linux: `${HERMES_HOME:-$HOME/.hermes}/desktop-plugins/noir-vazirmatn/plugin.js`
3. Confirm that the folder is named exactly `noir-vazirmatn`.
4. Run **Ctrl+K → Reload desktop plugins**.
5. Open **Settings → Plugins** and check whether **Noir — Vazirmatn** is listed. If it is disabled, enable it.
6. Fully quit and reopen Hermes Desktop.
7. If the plugin is listed with an error, copy the error text when reporting the problem. Do not edit `app.asar`.

### Windows verification command

Run this in PowerShell:

```powershell
$plugin = "$env:LOCALAPPDATA\hermes\desktop-plugins\noir-vazirmatn\plugin.js"
Test-Path $plugin
Get-Content $plugin -TotalCount 8
```

The first command should print `True`, and the output should include `noir-vazirmatn` and `Noir — Vazirmatn`.

## Updating

Run the same installer command again. It fast-forwards a Git checkout and safely replaces an older non-Git copy with a timestamped backup.

Windows:

```powershell
& ([scriptblock]::Create((irm https://raw.githubusercontent.com/mshojaei77/hermes-noir-vazirmatn-theme/main/install.ps1)))
```

macOS/Linux:

```bash
curl -fsSL https://raw.githubusercontent.com/mshojaei77/hermes-noir-vazirmatn-theme/main/install.sh | bash
```

After updating, run **Reload desktop plugins** again.

## Uninstall

Windows:

```powershell
Remove-Item -Recurse -Force "$env:LOCALAPPDATA\hermes\desktop-plugins\noir-vazirmatn"
```

macOS/Linux:

```bash
rm -rf "${HERMES_HOME:-$HOME/.hermes}/desktop-plugins/noir-vazirmatn"
```

Then reload desktop plugins or restart Hermes Desktop.

## Font behavior

The theme requests Vazirmatn from Google Fonts. If the stylesheet cannot be reached, the UI falls back to Segoe UI/system fonts; the theme itself still loads. Installing Vazirmatn locally is optional.

## Compatibility

- Hermes Desktop disk-plugin loader
- Hermes Desktop theme registry area: `themes`
- Tested host: Windows 11
- No build step required

## License

MIT. See [LICENSE](LICENSE).
