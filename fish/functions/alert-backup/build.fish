function build
  alphabot
  if [ "$argv[1]" = "7.1" ]
    qnx_71_toolchain
  end
  if [ "$argv[1]" = "7.0" ]
    qnx_70_toolchain
  end

  cd $ENVDIR/build/(branchname)/$argv[1]
  make -j (math (nproc))
  alphabot
  update-tags $argv[1]
end
