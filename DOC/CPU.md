# CPU 跑分测试

有幸身边可以借到白果 19 款 MacBookPro 16 i7 版本的机器，所以也对其进行了跑分，比较结果下面列出

### 白果

以下数据都属于波动值：

**单核跑分：1095**

- 功耗：25w
- 频率：4.3GHz
- 温度：80 度
- 占用：9%

<img width="700" src="https://user-images.githubusercontent.com/45085199/121453291-831e1000-c9d3-11eb-8eec-fb428ad82373.png">

**多核跑分：6647**

- 功耗：51.5W
- 频率：3.19GHz
- 温度：90 度
- 占用：99%

<img width="700" src="https://user-images.githubusercontent.com/45085199/121453090-228ed300-c9d3-11eb-8055-ee7b16bb240e.png">

### 黑果

以下数据都属于波动值：

**单核跑分：1037**

- 功耗：24w
- 频率：4.1GHz
- 温度：80 度
- 占用：7%

<img width="700" src="https://user-images.githubusercontent.com/45085199/121454792-05a7cf00-c9d6-11eb-8cc9-c3175d1f2a73.png">

**多核跑分：5916**

- 功耗：60W 持续 50s 撞温度墙后降到 45W
- 频率：3.15GHz 持续 50s 撞温度墙后降到 2.9GHz
- 温度：95 度+
- 占用：60%

<img width="700" src="https://user-images.githubusercontent.com/45085199/121455120-88308e80-c9d6-11eb-8476-909724174a5c.png">

**睡眠时**

![睡眠时](https://user-images.githubusercontent.com/45085199/124250041-0d7f0d00-db57-11eb-8d59-1986ecd0a6d9.jpg)

**工作时**

![日常工作](https://user-images.githubusercontent.com/45085199/124250115-2091dd00-db57-11eb-9f14-920ddf10a2b4.jpg)

### 总结

个人感觉，同等 cpu 下，白果黑果的单核性能差异不多，多核性能白果要好出 10% 左右，可能受限于散热和配置，但基本日常肯定时满足了

值得说的是，黑果多核跑分 COER REQ 一直为 4.5GHz，但实际跑到 2.95G 左右；而白果多核时 COER REQ 为 3.3G，实际跑到了 3.2G 左右

不知道黑果是不是多核跑分时因为这个导致某个核心高频高温撞到温度墙？以后是否可以通过什么调整 COER REQ ，有空在研究一下
