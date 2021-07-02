# BIOS 设置

本人 BIOS 版本：1.4.0

## 普通配置

开机按 F2 之后，进入 BIOS，操作如下：

| 路径                                                         | 操作                                                 |
| ------------------------------------------------------------ | ---------------------------------------------------- |
| System Configuration - SATA Operation                        | 选择 AHCI                                            |
| System Configuration - Thunderbolt Adapter Configuration     | 选择 No Security                                     |
| System Configuration - Fingerprint Reader                    | 取消所有勾选，如果你用 window 需要用到指纹，可以保留 |
| Security - PTT Security                                      | 取消勾选 PTT On                                      |
| Secure Boot - Secure Boot Enable                             | 取消 Secure Boot Enable 勾选                         |
| Intel Software Guard Extensions - Intel SGX Enable           | 选择 Disabled                                        |
| Power Management - Lid Switch                                | 取消 Power On Lid Open 勾选                          |
| Virtualization Support - VT for Direct I/O                   | 取消 Enable VT for Direct I/O 勾选                   |
| SupportAssist System Resolution - Auto OS Recovery Threshold | 选择 OFF                                             |
| SupportAssist System Resolution - SupportAssist OS Recovery  | 取消勾选                                             |

## 高级配置

对于 BIOS 修改，**请谨慎操作，请谨慎操作，请谨慎操作**，不过使用 modGRUBShell 修改，如果改错了，主板放电即可重置

勾选 config - Misc - Tools 中的 modGRUBShell.efi 和 VerifyMsrE2.efi

重启后，选择启动项：modGRUBShell，进入命令行

### modGRUBShell 命令

- 查询：setup_var_3 内存地址
- 设置：setup_var_3 内存地址 设置值

例如：

- 查询 CFG Lock 的值：setup_var_3 0x6F0
- 设置 CFG Lock 的值：setup_var_3 0x6F0 0x0

建议修改前先查询一下，值不对再修改

### 解锁 CFG Lock

这就不多说了吧，最好解锁了

- 配置名称：CFG Lock
- 内存地址: 0x6F0
- 所有选项:
  - 0x0: Disabled 禁用 CFG Lock
  - 0x1: Enabled 启用 CFG Lock（默认值）
- 执行命令: setup_var_3 0x6F0 0x0

**判断是否解锁 CFG Lock**

启动项选择 VerifyMsrE2，若输出最后一行为【This firmware has UNLOCKED MSR 0xE2 register!】即成功解锁

### 禁用独显

使用此方法可以完全禁用掉独显，不会有睡眠等问题，此 EFI 默认这样禁用

如果你不想设置，可以添加 disable-external-gpu 到核显项或参考[此文档禁用独显](https://dortania.github.io/Getting-Started-With-ACPI/Laptops/laptop-disable.html)

- 配置名称：Primary Display
- 内存地址: 0xA45
- 所有选项:
  - 0x0: IGFX 使用核显
  - 0x1: PEG 使用独显
  - 0x2: PCI 使用扩展显卡
  - 0x3: Auto 自动选择
  - 0x4: SG 使用核显和独显两种（默认值）
- 执行命令: setup_var_3 0xA45 0x0

**判断是否禁用独显**

- window: 看看设备管理器中是否存在独显
- mac: 关于本机-系统报告-图形卡/显示器中只有核显一项

### DVMT

设置 DVMT 为 64M，这个是驱动核显的必须项，就不赘述了

- 配置名称：DVMT Pre-Allocated
- 内存地址: 0xA13
- 所有选项:
  - 0x0: 0M
  - 0x1: 32M
  - 0x2: 64M（默认值）
- 执行命令: setup_var_3 0xA13 0x2

### RTC

这个也是一个都知道的配置了，mac 需要使用 RTC 时钟

因为默认就是 Legacy RTC，所以我删除了 SSDT-AWAC.aml，如果你的不是并且不想改 BIOS，可以[参考此文档](https://dortania.github.io/Getting-Started-With-ACPI/Universal/awac.html)

- 配置名称：System Time and Alarm Source
- 内存地址: 0x582
- 所有选项:
  - 0x0: ACPI Time and Alarm Device
  - 0x1: Legacy RTC（默认值）
- 执行命令: setup_var_3 0x582 0x1

### 其他官方推荐项

这是官方推荐的，设不设置都可以：

| 配置              | 内存地址 | 设置值 |
| ----------------- | -------- | ------ |
| Serial/COM Port   | 0x1532   | 0x0    |
| Above 4G decoding | 0xA18    | 0x1    |
