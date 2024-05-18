function botfe
  set file_path $argv[2]
  sshpass -p "root" ssh -t $argv[1] "cat $file_path" 1> /tmp/tmp.log
  vim /tmp/tmp.log 
  sshpass -p "root" scp /tmp/tmp.log $argv[1]:$file_path 
end
