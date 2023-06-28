function vim
  if command -v nivm > /dev/null
    nvim $argv
  else
    /usr/bin/vim $argv
  end
end
