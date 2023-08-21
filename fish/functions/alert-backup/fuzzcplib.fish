function fuzzcplib
cdbuild
set fpath (find . | fzf -e )
echo $fpath
scp $fpath $argv[1]:/opt/alphabot/lib/
end
