function botfv
ssh -t $argv[1] "cat $argv[2]" | lnav
end
