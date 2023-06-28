# Work around fish bug
function swallow_all
    begin;
        begin;
            eval $argv[1]
            set $argv[2] $status  # `read` sets the `status` flag => capture here
        end 2>| read -z __err
    end 1>| read -z __out

    return 0
end

function ec 
  set -g stat
  swallow_all "/opt/homebrew/bin/emacsclient -q -n $argv" stat 
  if test $stat
    osascript -e 'tell application "Emacs" to activate'
    sleep 1 # Give Emacs a chance to get itself together 
    /opt/homebrew/bin/emacsclient -q -n $argv
  end
end
