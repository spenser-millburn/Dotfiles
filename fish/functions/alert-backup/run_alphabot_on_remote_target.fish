function run_alphabot_on_remote_target
 ssh -t $argv "export LD_LIBRARY_PATH='/opt/alphabot/lib:/lib/alphabot_boost:/lib:/usr/lib:/lib/dll:/lib/dll/pci:/proc/boot';cd /opt/alphabot/bin; /opt/alphabot/bin/alphabot"
end
