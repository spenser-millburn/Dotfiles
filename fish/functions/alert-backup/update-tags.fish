# Defined in /tmp/fish.rED0I6/update-tags.fish @ line 2
function update-tags
alphabot
cp $HOME/build/(git rev-parse --abbrev-ref HEAD)/$argv[1]/compile_commands.json $HOME/alphabot/
end
