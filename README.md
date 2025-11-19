# Aurora
[![Platform](https://img.shields.io/badge/Platform-Android-green.svg)](https://www.android.com)
[![Thanks](https://img.shields.io/badge/Thanks-Box4-green.svg)](https://github.com/CHIZI-0618/box4magisk)

This project deploys sing-box, mihome proxies via [Magisk](https://github.com/topjohnwu/Magisk), [KernelSU](https://github.com/tiann/KernelSU), or [APatch](https://github.com/bmax121/APatch). It supports REDIRECT (TCP only), TProxy (TCP + UDP), and Tun (TCP + UDP, provided by the cores). It also supports a Mixed mode of REDIRECT (TCP) + Tun (UDP) proxy.


## Disclaimer

- This project is not responsible for the following: bricked devices, SD card corruption, or SoC burnouts.
- **Please ensure your configuration file does not cause a traffic loop, as this may lead to infinite device reboots.**
- If you're not sure how to configure this module, you might need applications like Clash for Android, sing-box for Android, etc.


## Installation
- Download the source code package from the [Download](https://codeload.github.com/Tkocean/Aurora/zip/refs/heads/main) page, then package it into a Magisk module before flashing it.
- Supports online updates via Magisk Manager, KernelSU Manager, or APatch app.


### Note

- The module does not include binary executables for [mihomo](https://github.com/MetaCubeX/mihomo), [sing-box](https://github.com/SagerNet/sing-box).
- After installing the module, please download the core files for your device's architecture and place them in the `/data/adb/Aurora/Kernel/` directory.

## Config

- Each core works in the `/data/adb/Aurora/Kernel/core_name` directory, where the core_name is defined in the `bin_name` variable of the `/data/adb/Aurora/config/Aurora.ini` file. The valid values are `mihomo`, `sing-box`, and the `bin_name` **determines the core enabled by the module**.
- The configuration files for each core must be customized by the user. The module script checks the validity of the configuration, and the check results are stored in the `/data/adb/Aurora/Check.log` file.
- Tip: The `mihomo` and `sing-box` cores come with default configurations prepared for working with the transparent proxy script. It is recommended to edit the `proxy-providers` or `outbounds` sections to add your proxy server. For advanced configurations, please refer to the respective official documentation. Links: [Mihomo documentation](https://wiki.metacubex.one), [Sing-box documentation](https://sing-box.sagernet.org/).


## Additional Notes

- When modifying the configuration files for each core, please ensure that the relevant configuration matches the definitions in the `/data/adb/Aurora/config/Aurora.ini` file.
- When the `Aurora` is started for the first time, the local machine IP will be added to the bypass list to prevent traffic loops. It will also start monitoring and insert local IP anti-loopback rules when network changes occur. However, if the local machine has a **public IP** address, it is still recommended to add the IP to the `intranet` array in the `/data/adb/Aurora/config/Aurora.ini` file.


## Credits
- [Box4](https://github.com/CHIZI-0618/box4magisk)
- [Mihomo](https://github.com/MetaCubeX/mihomo)
- [Sing-box](https://github.com/SagerNet/sing-box)
