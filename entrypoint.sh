#!/bin/bash

# Entrypoint script to start bluetooth and return a shell

service dbus start
bluetoothd &

/bin/bash
