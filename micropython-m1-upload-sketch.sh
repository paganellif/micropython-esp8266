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

# /dev/cu.usbserial-0001 put my-module-imported-from-main.py
ampy --port /dev/cu.usbserial-0001 put main.py
