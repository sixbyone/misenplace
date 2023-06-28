function vim
  if command -v emacsclient > /dev/null
    ec $argv
  else
    /usr/bin/vi $argv
  end
end
