function logls
if not set -q argv[1]
  ls -l (logdir)
else 
  if [ "$argv[2]" != "latest" ]
    ssh -t $argv[1] "ls - /var/alphabot_log;"
  else
    ssh -t $argv[1] "ls -lt /var/alphabot_log/ | head -n 15"
  end
end

end
