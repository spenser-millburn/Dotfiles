if status is-interactive
set -x EDITOR nvim
and not set -q TMUX
    exec tmux
end


