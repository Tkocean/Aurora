# individual
This is a magisk module that uses the features of magisk to enable transparent proxying on the device.




Updates:

Compared with the original version, this version removes many functions that ordinary users cannot use, and is more streamlined

Turn off IPV6 completely on the device as this can cause some problems

Add the following lines of code into service.sh to completely turn off IPV6 (this is a layer of insurance) 

sysctl -w net.ipv6.conf.all.accept_ra=0
sysctl -w net.ipv6.conf.default.accept_ra=0
sysctl -w net.ipv6.conf.wlan0.accept_ra=0

Using the yacd browser panel

Added the function of automatically selecting nodes in specified regions, currently only supports: HK US

The verbose log function is turned off, and only the log at startup is recorded

More functions please explore by yourself! 🥰




Help document: https://docs.adlyq.ml/
console link: http://127.0.0.1:9090/ui/#/
