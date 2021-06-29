# 戴尔灵越 7590 4K 屏黑苹果 OC 引导

适用版本：

- macOS 11.4 (20F71)
- macOS 10.15.7 (19H1217)

[更新记录](Changelog.md)

## 配置一览

原始配置：

| 类别      | 型号                                    |
| --------- | --------------------------------------- |
| CPU       | Intel Core i7-9750H                     |
| 显卡      | Nvidia Geforce GTX 1650                 |
| 内存      | Hynix DDR4 2666Mhz 16 GB                |
| 屏幕      | Sharp SHP14C7 @ 15.6' / 4K              |
| 硬盘      | Asgard AN512NVMe 512G                   |
| 声卡      | Realtek ALC295（戴尔定制型号：ALC3254） |
| 读卡器    | Realtek Memory Card Reader              |
| 网卡&蓝牙 | Intel Wireless-AC 9560                  |
| 指纹识别  | Goodix fingerpint reader                |

**添置/替换配置**

- Gloway DDR4 2666Mhz 16 GB ：组成双通道 32G 内存，直接插于另一个内存插槽，未出现兼容性问题
- DW1820A：替换 Intel Wireless-AC 9560 为 DW1820A

## 完成度

### 正常工作的

- CPU 睿频、变频正常，跑分测试参考【[CPU 跑分测试](DOC/CPU.md)】
- 显卡正常驱动，内屏自动开启 HIDPI，如有需要可以自行下载 4K 屏幕的校色文件：【[夏普 SHP14C7](http://oss.pm-z.tech/temp_files/SHP14C7_ICC.zip)】【[友达 AUO41EB](http://oss.pm-z.tech/temp_files/AUO41EB_ICC.zip)】（参考于[Pinming 的 Git 仓库](https://github.com/Pinming/Dell-Inspiron-7590-Hackintosh-Opencore)）
- 键盘、触控板驱动正常，options、command 键根据 mac 键盘映射，亮度快捷键正常，fn+prtsc 映射为 F13，可以在设置-键盘-快捷键-截图中设为 F13
- USB 已定制，并且为各个端口添加位置注释，可在 Hackintool - USB 中看到端口的具体位置
- 读卡器不会在【系统报告-读卡器】中显示，但可正常使用，插入后可在【系统报告-USB】中查看，速率为 480 Mb/秒
- 原生电源管理 & 电池状态显示
- 手动睡眠、自动睡眠、盒盖睡眠均正常
- DW1820A WiFi、蓝牙完美，随航、接力、隔空投送完美，蓝牙发送文件正常，若要通过蓝牙接收非苹果设备的文件，请在 mac 打开【设置-共享-蓝牙共享】

### 工作不完美的

- 雷电 3 接口充电正常，雷电 3 转扩展坞的 usb2.0、usb3.0、hdmi、千兆网口均正常，但扩展坞的 Type-C 口无法充电；是否支持完整雷电三功能暂不可知
- HDMI 可使用，但系统无法识别其热插拔，在【设置-显示器】中按下【options】（window 键）后，点击【检查显示器】即可。（PS：拔和插后，都需要进行此操作）
- 声卡 Realtek ALC295：内置麦克风未驱动，其他正常

### 不可工作的

- 显卡：这辈子应该都不会支持了，已禁用
- 指纹：同上，已禁用

## 使用配置

请遵循此文档进行 bios 设置[Bios 设置](DOC/Bios.md)，然后进行如下操作：

1. 下载此仓库
2. 更新三码
3. 此仓库默认使用 DW1820A 网卡，若使用 Intel 网卡，请在 Kernel 中关闭【AirportBrcmFixup.kext 三项驱动、BrcmBluetoothInjector.kext 三项驱动】，开启【itlwm.kext、IntelBluetoothFirmware.kext 两项驱动】，蓝牙设备的麦克风无输入，WiFi 使用请参考此文档：[OpenIntelWireless](https://openintelwireless.github.io)

**其他**

[当前驱动版本记录表 & 感谢开发人员/团队](DOC/KextsVersion.md)

## 参考文档

- [OpenCore Docs](https://dortania.github.io/OpenCore-Install-Guide)
- [OpenCore 部件](https://ocbook.tlhub.cn)
- [tctien342 的 Git 仓库](https://github.com/tctien342/Dell-Inspiron-7591-Hackintosh)
- [Pinming 的 Git 仓库](https://github.com/Pinming/Dell-Inspiron-7590-Hackintosh-Opencore)
- [灵越 7590/7591 优化指南：4.3 部分 黑苹果攻略](https://zhuanlan.zhihu.com/p/107350906?ivk_sa=1024320u)
