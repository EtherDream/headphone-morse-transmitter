# 耳机发送摩尔斯码

很多耳机可以发送 ⏮️ ⏸️ ⏯️ 命令，例如 Airpods，按一下可暂停或继续，按两下可播放下一曲，按三下可播放上一曲。

利用这个特征，我们可将耳机打造成一个摩尔斯码发射器！

## 在线演示

[https://etherdream.github.io/headphone-morse-transmitter/](https://etherdream.github.io/headphone-morse-transmitter/)

https://github.com/user-attachments/assets/37cf43c2-ec2f-429a-b2b2-47a96a5ad242

## 使用方式

⏸️ = 点 (.)

⏯️ = 划 (-)

⏮️ = 输出 或 退格

距上一次按键达到 `Delay` 毫秒时，`Input` 中输入的内容将会被输出。

按下 ⏮️ 时，如果 `Input` 不为空，则立即输出内容；否则相当于退格键，用于删除 `Words` 的最后一个字符。

本程序支持 [国际摩尔斯电码](https://morsecode.world/international/morse.html) 中字母、数字、标点以及换行符。

> 按 8 次 `.` 可删除最后一行的内容

## 键盘操作

如果你不想使用耳机，也可使用键盘上的 ⏮️ ⏸️ ⏯️ 键，这样甚至可设置更短的延迟，例如 500 毫秒：

https://github.com/user-attachments/assets/6b51ff7e-8c3b-4607-8da6-8e6534e57c74

此外，点击媒体控制浮层中的 ⏮️ ⏸️ ⏯️ 按钮也可以实现同样的效果。

## 后台运行

本程序可在后台运行，即使浏览器最小化，甚至锁屏也能运行。

因此你可以在手机上打开该网页，锁屏后盲发摩尔斯电码。只需按耳机，听反馈，无需看屏幕。

## 已知问题

火狐浏览器不稳定。
