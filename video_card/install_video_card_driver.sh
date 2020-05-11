#!/usr/bin/env bash

cd video_card
tar -zxvf video_driver_V1.1.0.101.636_PAL_MZ0380.tar
cd video_driver_V1.1.0.101.636_PAL_MZ0380
make
sudo make install
cd ..
rm -r video_driver_V1.1.0.101.636_PAL_MZ0380
cd ..
