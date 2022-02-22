#!/bin/bash

# Default boot.py esp8266
# ampy --port /dev/cu.usbserial-0001 get boot.py

  ## This file is executed on every boot (including wake-boot from deepsleep)
  #import esp
  ##esp.osdebug(None)
  #import uos, machine
  ##uos.dupterm(None, 1) # disable REPL on UART(0)
  #import gc
  ##import webrepl
  ##webrepl.start()
  #gc.collect()

# Erase Firmware
esptool.py --port /dev/cu.usbserial-0001 erase_flash

# Flash Firmware
wget https://micropython.org/resources/firmware/esp8266-1m-20220117-v1.18.bin
esptool.py --port /dev/cu.usbserial-0001 --baud 460800 write_flash --flash_size=detect 0 esp8266-20220117-v1.18.bin

# /dev/cu.usbserial-0001 put my-module-imported-from-main.py
ampy --port /dev/cu.usbserial-0001 put main.py
