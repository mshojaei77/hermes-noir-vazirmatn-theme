#!/usr/bin/env bash
set -euo pipefail

repo_url="https://github.com/mshojaei77/hermes-liquid-noir-theme.git"
hermes_home="${HERMES_HOME:-$HOME/.hermes}"
destination="$hermes_home/desktop-plugins/liquid-noir"

mkdir -p "$(dirname "$destination")"

if [ -d "$destination/.git" ]; then
  git -C "$destination" pull --ff-only
else
  git clone "$repo_url" "$destination"
fi

printf 'Installed Liquid Noir at %s\n' "$destination"
printf '%s\n' 'Open Hermes Desktop, then run Ctrl+K → Reload desktop plugins if needed.'
