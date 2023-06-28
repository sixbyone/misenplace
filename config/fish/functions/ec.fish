# Start emacs and edit a file (or not)
#
function ec2
  set -l frame_count (emacsclient -n -eval "(length (visible-frame-list))" 2> /dev/null)

  if test $status -eq 0
    if count $argv > /dev/null
      emacsclient -n $argv
    else
      emacsclient -nq -eval '(switch-to-buffer "*scratch*")' >/dev/null 2>&1
      osascript -e 'tell application "Emacs" to activate'
    end
  else
    nohup emacs $argv >/dev/null 2>&1 &; disown
  end
end
