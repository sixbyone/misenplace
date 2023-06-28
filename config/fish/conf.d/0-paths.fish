# This configuration file is executed first. We add the OS
# specific paths here so that the other configuration files
# are OS independant.

# Add any standard paths
if status is-login
  fish_add_path ~/.local/bin
  fish_add_path /usr/local/sbin

  if test -d /opt/homebrew/
    eval "$(/opt/homebrew/bin/brew shellenv)"
  end

  if test -d ~/.homebrew/
    eval "$(~/.homebrew/bin/brew shellenv)"
  end
end
