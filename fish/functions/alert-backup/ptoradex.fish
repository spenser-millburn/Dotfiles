# Defined in /tmp/fish.4ywPrQ/ptoradex.fish @ line 2
function ptoradex
scp *prod*.apm root@192.168.5.50:/opt/apms
ssh -t root@192.168.5.50 "apm-static install /opt/apms/*prod*.apm"
end
