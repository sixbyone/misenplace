function cat
  if command -s batcat > /dev/null
    batcat --paging=never $argv
  else if command -s bat > /dev/null
    bat --paging=never $argv
  else
    /bin/cat $argv
  end
end
