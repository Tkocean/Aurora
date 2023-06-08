# Aurora

[![platform](https://img.shields.io/badge/platform-Android-green.svg)](https://www.android.com)
[![](https://img.shields.io/badge/Magisk-v26.1-blue)](https://github.com/topjohnwu/Magisk/releases/tag/v26.1)

## UPDATA
    - 4.20 Update iptables code
    - 4.23 Change the operating logic of some functions and simplify the configuration file
    - 4.28 Simplify the script code and update the script running logic
    - 5.20 Abandon the script command line and change it to an independent program, adding more new functions to the original functions; optimize the execution logic of iptables
    - 6.08 Use the iptables command to shield the stun port to prevent WebRtc from leaking the real IP; optimize the local dns processing logic

## xposed module, can be used for fixed gateway IP
    https://github.com/XhyEax/SoftApHelper

## Dashboard
    - local
      PATH：http://localhost:619/ui/?theme=light
    > Apply the provided xposed module
    - Routing
      Path：http://${IP}:619/ui/?theme=light#/
      Port：http://${IP}:619
      Password：${YAML}

## License
    Copyright 2022 Mohsents
    
    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
