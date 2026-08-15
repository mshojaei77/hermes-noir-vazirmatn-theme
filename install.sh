#!/usr/bin/env bash
set -euo pipefail

repo_url="https://github.com/mshojaei77/hermes-noir-vazirmatn-theme.git"
hermes_home="${HERMES_HOME:-$HOME/.hermes}"
plugin_id="noir-vazirmatn"
destination="$hermes_home/desktop-plugins/$plugin_id"

if ! command -v git >/dev/null 2>&1; then
  printf '%s\n' 'Git was not found. Install Git, reopen your terminal, and run this installer again.' >&2
  exit 1
fi

mkdir -p "$(dirname "$destination")"

if [ -d "$destination/.git" ]; then
  printf 'Updating existing Git checkout: %s\n' "$destination"
  git -C "$destination" pull --ff-only
elif [ -e "$destination" ]; then
  stamp="$(date +%Y%m%d-%H%M%S)"
  backup="${destination}.backup-${stamp}"
  printf 'Existing non-Git plugin folder found. Moving it to: %s\n' "$backup"
  mv -- "$destination" "$backup"

  if ! git clone "$repo_url" "$destination"; then
    if [ ! -e "$destination" ]; then
      mv -- "$backup" "$destination"
    fi
    exit 1
  fi
else
  printf 'Installing %s to: %s\n' "$plugin_id" "$destination"
  git clone "$repo_url" "$destination"
fi

plugin_file="$destination/plugin.js"
if [ ! -f "$plugin_file" ]; then
  printf 'Installation completed without plugin.js at %s\n' "$plugin_file" >&2
  exit 1
fi

printf '\nInstalled Noir — Vazirmatn at: %s\n' "$destination"
printf '%s\n' 'Next: open Hermes Desktop, run Reload desktop plugins, then choose Noir — Vazirmatn in Settings → Appearance.'
