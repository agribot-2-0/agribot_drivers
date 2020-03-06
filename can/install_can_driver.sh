#!/bin/bash
# Remember to run script with root privileges!

# Install can socket drivers and examples
tar -zxvf advSocketCAN_V1.0.1.0.tar.gz
cd advSocketCAN_V1.0.1.0/driver && make && sudo make install
sudo cat modules_txt >> /etc/modules
cd ../examples && make
cd ../..

# Create service, which will activate CAN after system start
tar -zxvf service.tar.gz
sudo cp service/canSetupScript.sh /usr/local/bin/
sudo cp service/setup-can.service /etc/systemd/system/
sudo systemctl enable setup-can.service

rm -r service/ advSocketCAN_V1.0.1.0/
