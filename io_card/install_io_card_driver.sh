#!/usr/bin/env bash

tar xf pci_driver.tar.xz
sudo cat blacklist_txt >> /etc/modprobe.d/blacklist.conf
chmod +x linux_driver_source_4.0.0.0_64bit.run
sudo ./linux_driver_source_4.0.3.0_64bit.run silent install pci1730_pcm3730i pcigpdc
sudo cat modules_txt >> /etc/modules
rm blacklist_txt modules_txt linux_driver_source_4.0.1.0_64bit.run
