function vim
  if command -v emacsclient > /dev/null
    ec $argv
  else
    /usr/bin/vim $argv
  end
end
