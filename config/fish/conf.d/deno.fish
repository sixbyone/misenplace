#
# Add paths and environment variables if deno is installed
#
if status is-login
  if command -s deno > /dev/null
    # Add the deno bin directory
    fish_add_path ~/.deno/bin

    # Add the deno deploy token to the environment
    if command -s security > /dev/null
      set -x DENO_DEPLOY_TOKEN (security find-generic-password -a "deno-deploy" -w)
    end
  end
end
