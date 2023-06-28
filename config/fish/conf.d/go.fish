if command -s go > /dev/null
  if status is-login
    fish_add_path ~/.go/bin
  end	
end
