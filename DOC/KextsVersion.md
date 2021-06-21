# 驱动版本记录表

## oc

当前版本：0.7.0

下载地址：[OpenCorePkg](https://github.com/acidanthera/OpenCorePkg/releases)

## kext

> 按引用顺序进行排序

| 名称                        | 版本     | 说明                          | 下载地址                                                                         |
| --------------------------- | -------- | ----------------------------- | -------------------------------------------------------------------------------- |
| Lilu.kext                   | 1.5.3    | 黑苹果核心                    | [releases](https://github.com/acidanthera/Lilu/releases)                         |
| VirtualSMC.kext             | 1.2.4    | 传感器核心                    | [releases](https://github.com/acidanthera/VirtualSMC/releases)                   |
| AppleALC.kext               | 1.6.1    | 声卡                          | [releases](https://github.com/acidanthera/AppleALC/releases)                     |
| WhateverGreen.kext          | 1.5.0    | 显卡                          | [releases](https://github.com/acidanthera/WhateverGreen/releases)                |
| SMCBatteryManager.kext      | 1.2.4    | 电池传感器                    | 位于 VirtualSMC.kext 中                                                          |
| SMCSuperIO.kext             | 1.2.4    | 风扇传感器                    | 位于 VirtualSMC.kext 中                                                          |
| SMCLightSensor.kext         | 1.2.4    | 光线传感器                    | 位于 VirtualSMC.kext 中                                                          |
| SMCProcessor.kext           | 1.2.4    | CPU 传感器                    | 位于 VirtualSMC.kext 中                                                          |
| SMCDellSensors.kext         | 1.2.4    | 戴尔风扇控制                  | 位于 VirtualSMC.kext 中                                                          |
| CPUFriend.kext              | 1.2.3    | CPU 变频                      | [releases](https://github.com/acidanthera/CPUFriend/releases)                    |
| CPUFriendDataProvider.kext  | 自行构建 | CPU 变频配置                  | [构建方式参考](https://github.com/stevezhengshiqi/one-key-cpufriend)             |
| USBPorts.kext               | 自行构建 | USB 端口定制                  | [构建方式参考](https://dortania.github.io/OpenCore-Post-Install/usb)             |
| CpuTscSync.kext             | 1.0.3    | 修复启动时内核的崩溃          | [releases](https://github.com/acidanthera/CpuTscSync/releases)                   |
| VerbStub.kext               | 1.0.3    | 二合一耳机接口驱动            | [Github](https://github.com/hackintosh-stuff/ComboJack)                          |
| VoodooPS2Controller.kext    | 2.2.3    | 键盘驱动                      | [releases](https://github.com/acidanthera/VoodooPS2/releases)                    |
| VoodooI2C.kext              | 2.6.5    | 触摸板驱动                    | [releases](https://github.com/VoodooI2C/VoodooI2C/releases)                      |
| VoodooI2CHID.kext           | 2.6.5    | 触摸板驱动                    | 位于 VoodooI2C.kext 中                                                           |
| AirportBrcmFixup.kext       | 2.1.2    | 博通网卡 WiFi 驱动            | [releases](https://github.com/acidanthera/AirportBrcmFixup/releases)             |
| BrcmBluetoothInjector.kext  | 2.5.9    | 博通网卡蓝牙驱动              | [releases](https://github.com/acidanthera/BrcmPatchRAM/releases)                 |
| BrcmFirmwareData.kext       | 2.5.9    | 博通网卡蓝牙驱动              | 位于 BrcmBluetoothInjector.kext 中                                               |
| BrcmPatchRAM3.kext          | 2.5.9    | 博通网卡蓝牙驱动              | 位于 BrcmBluetoothInjector.kext 中                                               |
| itlwm.kext                  | 1.3.0    | Intel 网卡 WiFi 驱动          | [releases](https://github.com/OpenIntelWireless/itlwm/releases)                  |
| IntelBluetoothFirmware.kext | 1.1.3    | Intel 网卡蓝牙驱动            | [releases](https://github.com/OpenIntelWireless/IntelBluetoothFirmware/releases) |
| IntelBluetoothInjector.kext | 1.1.3    | Intel 网卡蓝牙驱动 - 开关修复 | 位于 IntelBluetoothFirmware.kext 中                                              |

## 感谢开发人员/团队

- [acidanthera](https://github.com/acidanthera) 提供了 OC 和几乎所有的 kext，以及详细的配置文档
- [alexandred](https://github.com/alexandred) 提供了 VoodooI2C
- [stevezhengshiqi](https://github.com/stevezhengshiqi) 提供了 CPUFriend 的快速构建脚本
- [OpenIntelWireless](https://github.com/OpenIntelWireless) 提供了 Intel 网卡 的全部驱动
- [hackintosh-stuff](https://github.com/hackintosh-stuff) 提供了 ComboJack 耳机孔修复驱动
