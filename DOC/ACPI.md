# ACPI 配置记录表

## 关于 ACPI 加载顺序

1. 加载机器的 ACPI
2. 执行重命名补丁
3. 加载自定义 SSDT

## 自定义 SSDT

> 按引用顺序进行排序

| 名称                     | 说明                           |
| ------------------------ | ------------------------------ |
| SSDT-ALS0.aml            | 仿冒环境光传感器               |
| SSDT-OCWork-dell.aml     | 戴尔特定补丁                   |
| SSDT-PLUG.aml            | CPU 节能                       |
| SSDT-PNLFCFL.aml         | 修复背光                       |
| SSDT-RMCF-PS2Map.aml     | 键盘按键映射和亮度快捷键修复   |
| SSDT-SBUS-MCHC.aml       | SBUS 补丁                      |
| SSDT-TPDX.aml            | 触控板启用 GPIO 中断模式       |
| SSDT-USBX.aml            | USB 电源修复                   |
| SSDT-LIDpatch.aml        | 盖子状态补丁                   |
| SSDT-EXT3-WakeScreen.aml | 修复唤醒后需按任意键亮屏的问题 |
| SSDT-PTSWAKTTS.aml       | 综合补丁架构                   |

## 二进制更名

> 按引用顺序进行排序

| 查找                | 替换               | 说明                                                                      |
| ------------------- | ------------------ | ------------------------------------------------------------------------- |
| ECDV (45434456)     | EC\_\_ (45435F5F)  | EC 问题，不多说了                                                         |
| PNLF (504E4C46)     | XNLF (584E4C46)    | SSDT-PNLFCFL.aml 使用了 PNLF 常量，所以需要替换一下机器的常量名以避免冲突 |
| \_LID (5F4C4944 00) | XLID (584C4944 00) | 盖子状态补丁，搭配 SSDT-LIDpatch.aml 使用                                 |
| EV5\_ (4556355F 02) | EV5X (45563558 02) | 亮度快捷键 Fn+F6、Fn+F6 补丁，搭配 SSDT-RMCF-PS2Map.aml                   |
| \_PTS (5F505453 01) | ZPTS (5A505453 01) | 综合补丁，SSDT-PTSWAKTTS.aml 的必要重命名                                 |
| \_WAK (5F57414B 01) | ZWAK (5A57414B 01) | 综合补丁，SSDT-PTSWAKTTS.aml 的必要重命名                                 |

## 感谢开发人员/团队

- [athlonreg](https://github.com/athlonreg) 提供了几乎全部的补丁配置和教程
- [acidanthera](https://github.com/acidanthera) 提供了详细的配置文档
