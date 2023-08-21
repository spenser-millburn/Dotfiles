# Defined in /tmp/fish.VFhSxW/fuzzlogs.fish @ line 2
function fuzzlogs
logpull $argv[1] (logls $argv[1] | fzf -e | cut -f 1 -d '.') | tr -d "*''"
end
