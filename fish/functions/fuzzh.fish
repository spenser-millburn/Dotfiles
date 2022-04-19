function fuzzh
set some_command (history | fzf -e ) 
eval $some_command
end
