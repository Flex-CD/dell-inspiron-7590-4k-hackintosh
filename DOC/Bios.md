# Bios 设置

本人 Bios 版本：1.4.0

## 普通配置

开机按 F2 之后，进入 BIOS，操作如下：

| 路径                                                         | 操作                                                                                                          |
| ------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------- |
| System Configuration - SATA Operation                        | 选择 AHCI                                                                                                     |
| System Configuration - Thunderbolt Adapter Configuration     | 选择 No Security                                                                                              |
| System Configuration - Thunderbolt Auto Switch               | 关闭 Auto Switch，点击 Apply 后，选择 BIOS Assist Enumeration（关闭 Auto Switch 后若不进行 Apply 就无法选择） |
| System Configuration - Fingerprint Reader                    | 取消所有勾选，如果你用 window 需要用到指纹，可以保留                                                          |
| Security - PTT Security                                      | 取消勾选 PTT On                                                                                               |
| Secure Boot - Secure Boot Enable                             | 关闭 Secure Boot Enable 勾选                                                                                  |
| Intel Software Guard Extensions - Intel SGX Enable           | 选择 Disabled                                                                                                 |
| Power Management - Lid Switch                                | 关闭 Power On Lid Open 勾选                                                                                   |
| Virtualization Support - VT for Direct I/O                   | 关闭 Enable VT for Direct I/O 勾选                                                                            |
| SupportAssist System Resolution - Auto OS Recovery Threshold | 选择 OFF                                                                                                      |
| SupportAssist System Resolution - SupportAssist OS Recovery  | 取消勾选                                                                                                      |

## 高级配置

首先声明，修改硬件有风险，请谨慎操作，请确保！

勾选 config - Misc - Tools 中的 modGRUBShell.efi 和 VerifyMsrE2.efi

重启后，选择启动项：modGRUBShell，进入命令行

### 内存地址

| 名称     | 内存地址 | 设置值 | 说明                                                             |
| -------- | -------- | ------ | ---------------------------------------------------------------- |
| CFG Lock | 0x6F0    | 0x0    | 解锁 CFG Lock，不想解锁请勾选 Kernel - Quirks - AppleXcpmCfgLock |
| DVMT     | 0xA13    | 0x2    | 设置 DVMT 为 64M，默认好像就是 0x2                               |
| DGPU     | 0x574    | 0x0    | 关闭 DGPU                                                        |

### 命令

- 查询：setup_var_3 内存地址
- 设置：setup_var_3 内存地址 设置值

例如：

- 查询 CFG Lock 的值：setup_var_3 0x6F0
- 设置 CFG Lock 的值：setup_var_3 0x6F0 0x0

建议先查询，值不对再修改。

### 判断是否解锁 CFG Lock

选择启动项 VerifyMsrE2，若输出最后一行为：

- This firmware has UNLOCKED MSR 0xE2 register!

即成功解锁。
