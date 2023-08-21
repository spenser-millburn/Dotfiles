function dlogview
 docker run -v ./$argv[1]:/tmp/$argv[1] utils-logviewer bash -c "/tmp/thl-0.20.0.0-x86_64-release/bin/thl /tmp/$argv[1]/$argv[1].key.thl /tmp/$argv[1]/$argv[1].thl" |lnav
end
