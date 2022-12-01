# Defined in /tmp/fish.ChDFnr/logpull.fish @ line 2
function logpull
  if [ "$argv[1]" = "splinter" ]
   scp root@10.105.28.13:/var/alphabot_log/$argv[2]"*" .
  end 
end
