# Defined in /tmp/fish.7Ni7c8/package.fish @ line 2
function package
	alphabot
  cd $ENVDIR/build/(branchname)/$argv[1]
  if [ "$argv[2]" = "init"]
    make -j16 package ota-package apm-package
  else
    make -j16 apm-package
  end
  cp *prod*.apm $ENVDIR/repo/alphabot
  cd $ENVDIR/repo/alphabot
end
