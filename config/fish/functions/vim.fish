function vim
  if command -v nvim > /dev/null
    nvim $argv
  else
    /usr/bin/vi $argv
  end
end
