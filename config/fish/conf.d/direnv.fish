if command -s direnv > /dev/null
  if status is-login
    direnv hook fish | source
  end
end


