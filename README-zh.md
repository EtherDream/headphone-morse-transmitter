# 🎧 摩尔斯码发送器

很多耳机可以发送 ⏮️ ⏸️ ⏯️ 命令，例如 Airpods，按一下可暂停或继续，按两下可播放下一曲，按三下可播放上一曲。

利用这个特征，我们可通过按耳机发送摩尔斯码！

## 在线演示

[https://etherdream.com/headphone-morse-transmitter/](https://etherdream.com/headphone-morse-transmitter/)

运行前需关闭其他播放器，否则无法接收耳机命令。

https://github.com/user-attachments/assets/37cf43c2-ec2f-429a-b2b2-47a96a5ad242

> 由于声音是从耳机里发出来的，因此很轻。

## 使用方式

⏸️ = 点 (.)

⏯️ = 划 (-)

⏮️ = 输出 或 退格

按下 ⏮️ 时，如果 `Input` 存在内容，则立即输出内容；如果 `Input` 为空，则相当于退格键，删除 `Words` 最后一个字符。

距上一次按键达到 `Delay` 毫秒时，`Input` 中的内容将会被自动输出。

本程序支持 [国际码（IMC）](https://morsecode.world/international/morse.html)、[和文码 (Wabun Code)](https://en.wikipedia.org/wiki/Wabun_code) 以及部分私有特征。

## 特殊功能

* `<AA>`: 换行 (`.-.-`)

* `<HH>`: 清空最后行 (`.` x8)

* `<DO>`: 切换到和文码 (`-..---`)

* `<SN>`: 返回到国际码 (`...-.`)

## 私有功能

* `<LO>`: 切换到小写/平假名（`.-..---`）

* `<UP>`: 切换到大写/片假名（`..-.--.`）

* `<SP>`: 空格 (`....-..`)

* `<X>` + 假名 = 小假名 (`-..- ?`) 

  支持 `っ ゃゅょ ぁぃぅぇぉ` 以及相应的片假名。

## 键盘操作

如果你不想使用耳机，也可使用键盘上的 ⏮️ ⏸️ ⏯️ 键，这样甚至可设置更短的延迟，例如 500 毫秒：

https://github.com/user-attachments/assets/6b51ff7e-8c3b-4607-8da6-8e6534e57c74

此外，点击媒体控制浮层中的 ⏮️ ⏸️ ⏯️ 按钮也可以实现同样的效果。

## 后台运行

本程序可在后台运行，即使浏览器最小化，甚至锁屏也能运行。

因此你可以在手机上打开该网页，锁屏后盲发摩尔斯电码。只需按耳机，听反馈，无需看屏幕。

https://github.com/user-attachments/assets/4fd3d899-7153-4029-8643-4775c699265e

## 已知问题

火狐浏览器不稳定。

iPhone 目前不支持 Media Source Extensions，并且 AudioContext 和 MediaSession 会有冲突，因此最终方案只用单个 `<audio>` 播放所有声音。
