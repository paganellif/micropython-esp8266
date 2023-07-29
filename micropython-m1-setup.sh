#!/bin/bash

# Pip tool install
python3 -m pip install --upgrade pip
pip install esptool

# Erase Flash
esptool.py --port /dev/cu.usbserial-0001 erase_flash

# Flash Firmware
wget https://micropython.org/resources/firmware/esp8266-20230426-v1.20.0.bin
esptool.py --port /dev/cu.usbserial-0001 --baud 460800 write_flash --flash_size=detect 0 esp8266-20230426-v1.20.0.bin

# Install serial com tool for REPL
brew install picocom

# Install Adafruit tool to upload micropython sketch
pip install adafruit-ampy
