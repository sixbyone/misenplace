# Add any standard paths
if status is-login
  if command -s deno > /dev/null
    fish_add_path ~/.deno/bin
    set -x DENO_DEPLOY_TOKEN (security find-generic-password -a "deno-deploy" -w)
  end
end
