function b
  alphabot
  cd $HOME/build/(git rev-parse --abbrev-ref HEAD)
  make -j16 
  alphabot
  update-tags
end
