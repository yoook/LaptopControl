LaptopControl
=============

control battery care limiter, keyboard backlight and thermal control (fan speed) on Sony Vaio Pro laptops under Linux

It's basically a wrapper around some files in /sys/devices/platform/sony-laptop/ to control the battery care limiter, the keyboard backlight, the thermal control and the wake up behaviour on this laptop computer.
It's written in C, so you can use the SUID-Bit, if you want.
