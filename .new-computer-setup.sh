#!bin/sh
xcode-select --install

echo kern.maxfiles=524288 | sudo tee -a /etc/sysctl.conf
echo kern.maxfilesperproc=524288 | sudo tee -a /etc/sysctl.conf
sudo sysctl -w kern.maxfiles=524288
sudo sysctl -w kern.maxfilesperproc=524288
ulimit -n 524288
