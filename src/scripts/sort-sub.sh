#!/opt/homebrew/bin/bash

shopt -s nullglob  # makes the loop not loop at all if there are no files

for name in *; do
  if [[ -d $name ]]; then
    # skip directories
    continue
  fi

  # get first n characters in filename
  first=${name:0:${1:-1}}

  # compute destination directory name from this first
  # character by uppercasing it
  destdir=${first^}

  # make that directory if it does not already exist
  mkdir -p -- "$destdir"
  
  # move the file into place (name collisions not checked for)
  mv -nv -- "$name" "$destdir"
done

