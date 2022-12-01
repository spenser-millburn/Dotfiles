# Defined in /tmp/fish.4LLFdq/package.fish @ line 2
function package
	alphabot
  cd $HOME/build/(git rev-parse --abbrev-ref HEAD)/$argv[1]
  # make -j16 package ota-package apm-package
  if [ "$argv[2]" = "init"]
    make -j16 package ota-package apm-package
  else
    make -j16 apm-package
  end
  cp *prod*.apm $HOME/alphabot
  cd $HOME/alphabot
end
