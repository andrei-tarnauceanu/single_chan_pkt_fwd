#!/usr/bin/env bash
whoami
if [ ! -d "/sys/class/gpio/gpio0" ]; then
    echo "0" > /sys/class/gpio/export
fi
echo "out" > /sys/class/gpio/gpio0/direction
echo "1" > /sys/class/gpio/gpio0/value
sleep 2
echo "0" > /sys/class/gpio/gpio0/value
sleep 2
echo "1" > /sys/class/gpio/gpio0/value
sleep 2
echo "0" > /sys/class/gpio/gpio0/value
sleep 2
