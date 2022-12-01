# Defined in /tmp/fish.zhJ5OX/build.fish @ line 2
function build
  alphabot
  cd $HOME/build/(git rev-parse --abbrev-ref HEAD)/$argv[1]
  make -j16 
  alphabot
  update-tags $argv[1]
end
