#!/bin/bash

sudo ip link set can0 up type can bitrate 250000
sudo ip link set can1 up type can bitrate 250000
ip link list | grep can
