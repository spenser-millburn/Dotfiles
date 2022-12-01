# Defined in /tmp/fish.uNU6mf/install_calcurse.fish @ line 2
function install_calcurse
wget https://calcurse.org/files/calcurse-4.8.0.tar.gz
tar -xzf calcurse-4.8.0.tar.gz
rm -rf calcurse-4.8.0.tar.gz
sudo apt-get install libncurses5-dev libncursesw5-dev
cd calcurse-4.8.0
# ./install.sh
./configure
make 
sudo make install
end
