#!/usr/bin/env bash
set -euo pipefail
shopt -s globstar

ROOT_DIR="$(pwd)"
updated=0
skipped=0
for f in **/*.prompt.md; do
  # only regular files
  [ -f "$f" ] || continue
  # if file already has the header anywhere, skip
  if grep -q '^mode: agent' "$f"; then
    echo "skip: $f"
    skipped=$((skipped+1))
  else
    tmpfile=$(mktemp)
    printf '%s\n' '---' 'mode: agent' '---' '' > "$tmpfile"
    cat "$f" >> "$tmpfile"
    mv "$tmpfile" "$f"
    echo "updated: $f"
    updated=$((updated+1))
  fi
done

echo "Done. updated=$updated skipped=$skipped"
