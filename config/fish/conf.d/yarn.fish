if command -s yarn > /dev/null
  if status is-login
    fish_add_path ~/.yarn/bin
  end
end
