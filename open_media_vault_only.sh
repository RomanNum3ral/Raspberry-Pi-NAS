#!/bin/bash
sudo apt-get update && sudo apt-get upgrade -y
sudo apt install -y python
sudo apt install -y pigpio python-pigpio python3-pigpio git
git clone https://github.com/geekworm-com/x735-v2.5
cd x735-v2.5
sudo chmod +X *.sh
sudo bash install.sh
echo "alias off='sudo x735softsd.sh'" >> ~/.bashrc
echo "python /home/pi/x735-v2.5/pwm_fan_control.py&" >> ~/.bashrc
sudo wget -O - https://raw.githubusercontent.com/OpenMediaVault-Plugin-Developers/installScript/master/install | sudo bash
