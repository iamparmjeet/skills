#!/usr/bin/env bash
set -euo pipefail

# Install every skill in this repository for Codex and Claude Code.
# Existing real directories and symlinks outside this repository are preserved.

repo_root="$(cd "$(dirname "$0")/.." && pwd)"
skill_root="$repo_root/skills"
destinations=("$HOME/.codex/skills" "$HOME/.claude/skills")

while IFS= read -r -d '' skill_file; do
  skill_dir="$(dirname "$skill_file")"
  skill_name="$(basename "$skill_dir")"

  for destination in "${destinations[@]}"; do
    target="$destination/$skill_name"
    mkdir -p "$destination"

    if [[ -e "$target" || -L "$target" ]]; then
      if [[ -L "$target" && "$(readlink -f "$target")" == "$skill_dir" ]]; then
        printf 'already linked: %s\n' "$target"
        continue
      fi

      printf 'refusing to replace existing skill: %s\n' "$target" >&2
      exit 1
    fi

    ln -s "$skill_dir" "$target"
    printf 'linked: %s -> %s\n' "$target" "$skill_dir"
  done
done < <(find "$skill_root" -mindepth 2 -maxdepth 2 -name SKILL.md -print0)
