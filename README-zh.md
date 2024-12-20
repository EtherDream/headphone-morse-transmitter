# 🎧 摩尔斯码发送器

很多耳机可以发送 ⏮️ ⏸️ ⏯️ 命令，例如 Airpods，按一下可暂停或继续，按两下可播放下一曲，按三下可播放上一曲。

利用这个特征，我们可通过按耳机发送摩尔斯码！

## 在线演示

[https://etherdream.com/headphone-morse-transmitter/](https://etherdream.com/headphone-morse-transmitter/)

由于浏览器限制，你必须点击任意位置才能初始化音频（播放一个几乎静音的背景音乐），从而可接受耳机命令。

请先关闭其他播放器，否则耳机命令可能不会发送到本页面上。如果页面仍无法收到耳机命令，可点击 `Debug` 检测音频是否在播放，如果没有可手动播放。

https://github.com/user-attachments/assets/37cf43c2-ec2f-429a-b2b2-47a96a5ad242

> 由于声音是从耳机里发出来的，因此很轻。

## 使用方式

⏸️ = 点 (.)

⏯️ = 划 (-)

⏮️ = 输出 或 退格

按下 ⏮️ 时，如果 `Input` 存在内容，则立即输出内容；如果 `Input` 为空，则相当于退格键，删除 `Words` 最后一个字符。

距上一次按键达到 `Delay` 毫秒时，`Input` 中的内容将会被自动输出。

本程序支持 [国际码](https://en.wikipedia.org/wiki/Morse_code)、[和文码](https://en.wikipedia.org/wiki/Wabun_code)、[中文电码](https://zh.wikipedia.org/wiki/%E4%B8%AD%E6%96%87%E7%94%B5%E7%A0%81) 以及部分私有特征。

## 特殊功能

* `<AA>`: 换行 (`.-.-`)

* `<HH>`: 清空最后行 (`.` x8)

* `<DO>`: 切换到和文码 (`-..---`)

* `<SN>`: 返回到国际码 (`...-.`)

* `\d{2,4}`: 输入 2~4 个数字，输出 1 个汉字。参考 [1983年标准电码本](https://zh.wiktionary.org/wiki/Appendix:%E4%B8%AD%E6%96%87%E7%94%B5%E7%A0%81/%E4%B8%AD%E5%9B%BD%E5%A4%A7%E9%99%861983)（前两个 0 可忽略）。

## 私有功能

* `<SS>`: 语音朗读最后一行 (`.` x6)

* `<LO>`: 切换到小写/平假名（`.-..---`）

* `<UP>`: 切换到大写/片假名（`..-.--.`）

* `<SP>`: 空格 (`....--.`)

* `<X>` + 假名 = 小假名 (`-..- ?`) 

  支持 `っ ゃゅょ ぁぃぅぇぉ ゕゖ` 以及相应的片假名。

## 键盘操作

如果你不想使用耳机，也可使用键盘上的 ⏮️ ⏸️ ⏯️ 键，这样可更快输入：

https://github.com/user-attachments/assets/60bc966c-e960-4c0e-82e3-e4769613d91d

此外，点击媒体控制浮层中的 ⏮️ ⏸️ ⏯️ 按钮也可以实现同样的效果。

https://github.com/user-attachments/assets/45395d2d-5624-4061-be12-bbe22c645d86


## 后台运行

本程序可在后台运行，即使浏览器最小化，甚至锁屏也能运行。

因此你可以在手机上打开该网页，锁屏后盲发摩尔斯电码。只需按耳机，听反馈，无需看屏幕。

https://github.com/user-attachments/assets/4fd3d899-7153-4029-8643-4775c699265e
