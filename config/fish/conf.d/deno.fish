# Add any standard paths
if status is-login
  if command -s deno > /dev/null
    fish_add_path ~/.deno/bin
  end
end
