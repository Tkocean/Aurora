# Aurora
[![Platform](https://img.shields.io/badge/Platform-Android12+-green.svg)](https://www.android.com)
[![Source](https://img.shields.io/badge/Source-Code-yellow.svg)](https://codeload.github.com/Tkocean/Aurora/zip/refs/heads/main)
[![ChangeLog](https://img.shields.io/badge/Change-Log-blue.svg)](https://raw.githubusercontent.com/Tkocean/Aurora/refs/heads/Changes/README.md)

This project deploys sing-box, mihome proxies via [Magisk](https://github.com/topjohnwu/Magisk), [KernelSU](https://github.com/tiann/KernelSU), or [APatch](https://github.com/bmax121/APatch). It supports TProxy (TCP + UDP), and Tun (TCP + UDP, provided by the cores). ~~REDIRECT (TCP only), It also supports a Mixed mode of REDIRECT (TCP) + Tun (UDP) proxy.~~


## Disclaimer
- This project is not responsible for the following: bricked devices, Storage device corruption, or SoC burnouts.
- **Please ensure your configuration file does not cause a traffic loop, as this may lead to infinite device reboots.**
- If you're not sure how to configure this module, you might need applications like Clash for Android, sing-box for Android, etc.


## Install
- Download the module package from the [Release](https://github.com/Tkocean/Aurora/releases/download/Stable/Aurora.zip) page, and install it via Magisk Manager, KernelSU Manager, or APatch.
- Download the source code package from the [Source](https://codeload.github.com/Tkocean/Aurora/zip/refs/heads/main) page, then package it into a Magisk module before flashing it.
- Supports online updates via Magisk Manager, KernelSU Manager, or APatch app.

## Manual Install:
- Step 1: Download the source code package from the [Source](https://codeload.github.com/Tkocean/Aurora/zip/refs/heads/main) page and extract them. Move the main program `Aurora` from the `/system/bin/` directory inside the extracted folder into the system variable, e.g. `/data/adb/ksu/bin`.
- Step 2: Manually create the directory `/data/adb/Aurora` and move the `Config` folder from the source files into this directory.
- Step 3: Move `service.sh` to a directory that supports boot-time execution, e.g. `/data/adb/service.d`.
- Step 4: Set executable permissions for all files and folders as needed, recommended `755`, then reboot the device or manually execute `service.sh`.


## Config
- Each core works in the `/data/adb/Aurora/Kernel/core_name` directory, where the core_name is defined in the `bin_name` variable of the `/data/adb/Aurora/config/Aurora.ini` file. The valid values are `mihomo`, `sing-box`, and the `bin_name` **determines the core enabled by the module**.
- The configuration files for each core must be customized by the user. The module script checks the validity of the configuration, and the check results are stored in the `/data/adb/Aurora/Check.log` file.
- Tip: The `mihomo` and `sing-box` cores come with default configurations prepared for working with the transparent proxy script. It is recommended to edit the `proxy-providers` or `outbounds` sections to add your proxy server. For advanced configurations, please refer to the respective official documentation. Links: [sing-box doc](https://sing-box.sagernet.org/) [mihomo doc](https://wiki.metacubex.one).


## Notes
- The module does not include binary executables for [sing-box](https://github.com/SagerNet/sing-box) [mihomo](https://github.com/MetaCubeX/mihomo).
- After installing the module, please download the core files for your device's architecture and place them in the `/data/adb/Aurora/Kernel/` directory.
- When modifying the configuration files for each core, please ensure that the relevant configuration matches the definitions in the `/data/adb/Aurora/config/Aurora.ini` file.
- When the `Aurora` is started for the first time, the local machine IP will be added to the bypass list to prevent traffic loops. It will also start monitoring and insert local IP anti-loopback rules when network changes occur. However, if the local machine has a **Public IP** address, it is still recommended to add the IP to the `intranet` array in the `/data/adb/Aurora/config/Aurora.ini` file.


## Credits
- [Box4](https://github.com/CHIZI-0618/box4magisk)
- [Mihomo](https://github.com/MetaCubeX/mihomo)
- [Sing-box](https://github.com/SagerNet/sing-box)
