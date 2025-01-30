# Aurora
[![platform](https://img.shields.io/badge/platform-Android-green.svg)](https://www.android.com)

This project deploys sing-box, mihome proxies via [Magisk](https://github.com/topjohnwu/Magisk), [KernelSU](https://github.com/tiann/KernelSU), or [APatch](https://github.com/bmax121/APatch). It supports REDIRECT (TCP only), TPROXY (TCP + UDP), and TUN (TCP + UDP, provided by the cores). It also supports a mixed mode of REDIRECT (TCP) + TUN (UDP) proxy.


## Disclaimer

This project is not responsible for the following: bricked devices, SD card corruption, or SoC burnouts.

**Please ensure your configuration file does not cause a traffic loop, as this may lead to infinite device reboots.**

If you're not sure how to configure this module, you might need applications like ClashForAndroid, sing-box for Android, v2rayNG, surfboard, SagerNet, AnXray, etc.


## UPDATA
    - 2023
    - 4.20 Update iptables code.
    - 4.23 Change the operating logic of some functions and simplify the configuration file.
    - 4.28 Simplify the script code and update the script running logic.
    - 2024
    - 5.20 Abandon the script command line and change it to an independent program, adding more new functions to the original functions; optimize the execution logic of iptables.
    - 6.08 Use the iptables command to shield the stun port to prevent WebRtc from leaking the real IP; optimize the local dns processing logic.
    - 6.10 NAS server powered by Alist；Optimize the code and solve some problems.
    - 6.28 Data directory reconstruction; optimize iPtables execution logic; bypass public network iP to prevent loopback; Alist support, nas function is now available.
    - 8.28 Replace the new execution logic, code execution is more efficient；Optimize mock notifications；Improved start-stop logic.
    - 9.17 Fixes and improvements.
    - 10.30 Code optimization and refactoring; Fixes and improvements.
    - 2025
    - 1.25 Warning: This is a major update that optimizes the file architecture, eliminates many unnecessary items, and optimizes performance on devices.


## Part of the code for this project comes from the following open source projects
Thanks to the developers of the following open source projects.
- [box4](https://github.com/CHIZI-0618/box4magisk)
- [clash meta](https://github.com/MetaCubeX/Clash.Meta)
- [sing-box](https://github.com/SagerNet/sing-box)
