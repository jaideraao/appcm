file ./bin/app.elf

target extended-remote /dev/cu.usbmodem7BAE9BAB1
monitor swd_scan
attach 1

load
compare-sections
start
