# This configuration file is executed first. We add the OS
# specific paths here so that the other configuration files
# and OS independant.

# Add any standard paths
if status is-login
  fish_add_path ~/.local/bin
  fish_add_path /usr/local/sbin
end

# Add any architecture specific paths
switch (uname)
  case Linux
  case Darwin
    # On MacOS we use Homebrew for package management so 
    # add the Homebrew paths.
    if status is-login
      fish_add_path /opt/homebrew/bin
      fish_add_path /opt/homebrew/sbin
    end 
  case '*'
end
