function git-root
    cd "$(git rev-parse --show-cdup)/."
end
