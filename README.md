# individual
This is a magisk module that uses the features of magisk to enable transparent proxying on the device.

#
Synopsis:

Compared with the original version, this version removes many functions that ordinary users cannot use, and is more streamlined

Turn off IPV6 completely on the device as this can cause some problems

Add the following lines of code into service.sh to completely turn off IPV6 (this is a layer of insurance) 😜

#

sysctl -w net.ipv6.conf.all.accept_ra=0

sysctl -w net.ipv6.conf.default.accept_ra=0

sysctl -w net.ipv6.conf.wlan0.accept_ra=0


#

Using the yacd browser panel

Optimize log display,you can delete the last saved log by yourself after each start and stop

Added the function of automatically selecting nodes in specified regions, currently only supports: HK US

The verbose log function is turned off, and only the log at startup is recorded

Since geoip uses Country.mmdb, users are required to manually obtain geoip updates from the following URL

More functions please explore by yourself! 🥰

#
Help document: https://docs.adlyq.ml/

console link: http://127.0.0.1:9090/ui/#/

Geoip URL：https://raw.githubusercontent.com/Hackl0us/GeoIP2-CN/release/Country.mmdb

Use the tutorial：https://telegra.ph/Clash-For-Magisk使用教程-04-10
