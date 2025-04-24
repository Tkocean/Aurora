# Aurora
[![Platform](https://img.shields.io/badge/Platform-Android-green.svg)](https://www.android.com)
[![Thanks](https://img.shields.io/badge/Thanks-Box4-green.svg)](https://github.com/CHIZI-0618/box4magisk)

This project deploys sing-box, mihome proxies via [Magisk](https://github.com/topjohnwu/Magisk), [KernelSU](https://github.com/tiann/KernelSU), or [APatch](https://github.com/bmax121/APatch). It supports REDIRECT (TCP only), TProxy (TCP + UDP), and Tun (TCP + UDP, provided by the cores). It also supports a Mixed mode of REDIRECT (TCP) + Tun (UDP) proxy.~~as well as automatic cleaning of junk files, fstrim and other features.~~


## Disclaimer

- This project is not responsible for the following: bricked devices, SD card corruption, or SoC burnouts.
- **Please ensure your configuration file does not cause a traffic loop, as this may lead to infinite device reboots.**
- If you're not sure how to configure this module, you might need applications like ClashForAndroid, sing-box for Android, v2rayNG, surfboard, SagerNet, AnXray, etc.


## Installation

- Download the module package from the [Release](https://github.com/Tkocean/Aurora/releases/download/Simplified/Aurora.zip) page, and install it via Magisk Manager, KernelSU Manager, or APatch.
- Supports online updates via Magisk Manager, KernelSU Manager, or APatch app.


### Note

- The module does not include binary executables for [mihomo](https://github.com/MetaCubeX/mihomo), [sing-box](https://github.com/SagerNet/sing-box).
- After installing the module, please download the core files for your device's architecture and place them in the `/data/Aurora/Kernel/` directory.
- ~~Configuration file `/data/adb/Aurora/Config/Trash.conf` to define the files or folders you need to delete. **Data is priceless, proceed with caution!!!**~~
- ~~Configure `Backstage` in the `/data/adb/Aurora/Aurora.ini` file to add a battery-optimized whitelisted application.~~


## Configuration

- Each core works in the `/data/adb/Aurora/Kernel/core_name` directory, where the core_name is defined in the `bin_name` variable of the `/data/adb/Aurora/config/Aurora.ini` file. The valid values are `mihomo`, `sing-box`, and the `bin_name` **determines the core enabled by the module**.
- The configuration files for each core must be customized by the user. The module script checks the validity of the configuration, and the check results are stored in the `/data/adb/Aurora/Check.log` file.
- Tip: The `mihomo` and `sing-box` cores come with default configurations prepared for working with the transparent proxy script. It is recommended to edit the `proxy-providers` or `outbounds` sections to add your proxy server. For advanced configurations, please refer to the respective official documentation. Links: [Mihomo documentation](https://wiki.metacubex.one), [Sing-box documentation](https://sing-box.sagernet.org/).


## Additional Notes

- When modifying the configuration files for each core, please ensure that the relevant configuration matches the definitions in the `/data/adb/Aurora/config/Aurora.ini` file.
- When the `Aurora` is started for the first time, the local machine IP will be added to the bypass list to prevent traffic loops. It will also start monitoring and insert local IP anti-loopback rules when network changes occur. However, if the local machine has a **public IP** address, it is still recommended to add the IP to the `intranet` array in the `/data/adb/Aurora/config/Aurora.ini` file.


## Uninstallation

- Uninstalling this module via Magisk Manager, KernelSU Manager， or APatch app


## Changelog
    - 2025
    - 4.24 Stripped out a bunch of unnecessary features；Fixes & Improvements.
    - 2.08 Adjusting the `test` command to show more information.
    - 2.04 Updated crond execution time to default to once every 5 minutes.
    - 1.30 Updating the configuration.
    - 1.25 Warning: This is a major update that optimizes the file architecture, eliminates many unnecessary items, and optimizes performance on devices.

    - 2024
    - 10.30 Code optimization and refactoring; Fixes & Improvements.
    - 9.17 Fixes & Improvements.
    - 8.28 Replace the new execution logic, code execution is more efficient；Optimize mock notifications；Improved start-stop logic.
    - 6.08 Use the iptables command to shield the stun port to prevent WebRtc from leaking the real IP; optimize the local dns processing logic.
    - 5.20 Abandon the script command line and change it to an independent program, adding more new functions to the original functions; optimize the execution logic of iptables.
    
    - 2023
    - 4.28 Simplify the script code and update the script running logic.
    - 4.23 Change the operating logic of some functions and simplify the configuration file.
    - 4.20 Update iptables code.

    - 2022
    - 5.20 Update core.

## Acknowledgements
Thanks to the developers of the following open source projects.
- [Box4](https://github.com/CHIZI-0618/box4magisk)
- [Mihomo](https://github.com/MetaCubeX/mihomo)
- [Sing-box](https://github.com/SagerNet/sing-box)
