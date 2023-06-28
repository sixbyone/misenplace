#!/opt/homebrew/bin/bash

shopt -s nullglob  # makes the loop not loop at all if there are no files

for name in *; do
  if [[ -d $name ]]; then
    # skip directories
    continue
  fi

  ~/.local/bin/unique-rename "$name"
done

