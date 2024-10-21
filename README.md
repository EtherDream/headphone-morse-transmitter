# 🎧 Morse Transmitter

[中文版](README-zh.md)

Many headphones can send ⏮️ ⏸️ ⏯️ commands, such as Airpods, with a single press to pause or resume, double press to play the next track, and triple press to play the previous track.

Using this feature, we can use headphones as morse transmitters.

## Demo

[https://etherdream.github.io/headphone-morse-transmitter/](https://etherdream.github.io/headphone-morse-transmitter/)

Please close other players, otherwise this page cannot receive headphone commands.

https://github.com/user-attachments/assets/37cf43c2-ec2f-429a-b2b2-47a96a5ad242

> The sound in this video comes from headphones, so it's very light.

## Usage

⏸️ = dit (.)

⏯️ = dah (-)

⏮️ = flush or backspace

When ⏮️ is pressed, if `Input` buffer is not empty, it will be flush immediately; otherwise, it is equivalent to the backspace key, which is used to delete the last character of `Words`.

When `Delay` time has passed since the last key press, `Input` buffer will be flush automatically.

This program supports [International Morse Code](https://morsecode.world/international/morse.html), [Wabun Code](https://en.wikipedia.org/wiki/Wabun_code) and some private features.

## Special Feature

* `<AA>`: New line (`.-.-`)

* `<HH>`: Delete the last line (`.` x8)

* `<DO>`: Change to Wabun Code (`-..---`)

* `<SN>`: Return to International Code (`...-.`)

## Private Feature

* `<LO>`: Change to lowercase/hiragana (`.-..---`)

* `<UP>`: Change to uppercase/katakana (`..-.--.`)

* `<SP>`: Add a space (`....-..`)

* `<X>` + kana = small kana (`-..- ?`) 

  Supports `っ ゃゅょ ぁぃぅぇぉ` and the corresponding katakana.

## Keyboard

If you don't want to use a headphone, you can also use ⏮️ ⏸️ ⏯️ keys on your keyboard, which can even set a shorter delay, such as 500ms:

https://github.com/user-attachments/assets/6b51ff7e-8c3b-4607-8da6-8e6534e57c74

Alternatively, you can click ⏮️ ⏸️ ⏯️ buttons in the media control popup.

## Blind Mode

This program can run in the background, even if the browser is minimized or the screen is locked. So you can use this program on your phone to practice Morse code, using only your fingers and ears, without eyes!

https://github.com/user-attachments/assets/4fd3d899-7153-4029-8643-4775c699265e

## Known Issues

Firefox is unstable on MacOS and Windows.

On MacOS, sometimes only one headphone can send commands (e.g. my AirPods right headphone works fine, but left headphone won't pause multiple times).

On Windows, sometimes the first ~0.5s of sound will be lost (even when saved to disk and played with player software, probably a buffer issue with the Bluetooth driver), but Chrome works fine.
