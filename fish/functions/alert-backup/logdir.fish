# Defined in /tmp/fish.9FrFmq/logdir.fish @ line 2
function logdir
alphabot
set -x LOG_DIR_PATH $ENVDIR/logs
if set -q argv[1]
  echo $LOG_DIR_PATH/$argv[1]
  return 
end
echo $LOG_DIR_PATH/(branchname)
end
