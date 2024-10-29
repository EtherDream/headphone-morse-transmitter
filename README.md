# 🎧 Morse Transmitter

[中文版](README-zh.md)

Many headphones can send ⏮️ ⏸️ ⏯️ commands, such as Airpods, with a single press to pause or resume, double press to play the next track, and triple press to play the previous track.

Using this feature, we can use headphones as morse transmitters.

## Demo

[https://etherdream.github.io/headphone-morse-transmitter/](https://etherdream.github.io/headphone-morse-transmitter/)

Due to browser limitations, you must click anywhere to init the audio (which plays an almost silent BGM) so that the headphone command can be received.

Please close the other players first, otherwise the headphone command may not be sent to this page. If the page still can't receive the headphone command, you can click `Debug` to check if the audio is playing, if not, you can play it manually.

https://github.com/user-attachments/assets/37cf43c2-ec2f-429a-b2b2-47a96a5ad242

> The sound in this video comes from headphones, so it's very light.

## Usage

⏸️ = dit (.)

⏯️ = dah (-)

⏮️ = flush or backspace

When ⏮️ is pressed, if `Input` buffer is not empty, it will be flush immediately; otherwise, it is equivalent to the backspace key, which is used to delete the last character of `Words`.

When `Delay` time has passed since the last key press, `Input` buffer will be flush automatically.

This program supports [International Morse Code](https://en.wikipedia.org/wiki/Morse_code), [Wabun Code](https://en.wikipedia.org/wiki/Wabun_code), [Chinese telegraph code](https://en.wikipedia.org/wiki/Chinese_telegraph_code) and some private features.

## Special Feature

* `<AA>`: New line (`.-.-`)

* `<HH>`: Delete the last line (`.` x8)

* `<DO>`: Change to Wabun Code (`-..---`)

* `<SN>`: Return to International Code (`...-.`)

* `\d{2,4}`: Input 2~4 digits and output 1 Chinese character.

  Refer to the [Chinese telegraph code/Mainland 1983](https://en.wiktionary.org/wiki/Appendix:Chinese_telegraph_code/Mainland_1983).


## Private Feature

* `<SS>`: Say the last line (`.` x6)

* `<LO>`: Change to lowercase/hiragana (`.-..---`)

* `<UP>`: Change to uppercase/katakana (`..-.--.`)

* `<SP>`: Add a space (`....--.`)

* `<X>` + kana = small kana (`-..- ?`) 

  Supports `っ ゃゅょ ぁぃぅぇぉ ゕゖ` and the corresponding katakana.

## Keyboard

If you don't want to use a headphone, you can also use ⏮️ ⏸️ ⏯️ keys on your keyboard, which is actually faster:

https://github.com/user-attachments/assets/60bc966c-e960-4c0e-82e3-e4769613d91d

Alternatively, you can click ⏮️ ⏸️ ⏯️ buttons in the media control popup.

## Blind Mode

This program can run in the background, even if the browser is minimized or the screen is locked. So you can use this program on your phone to practice Morse code, using only your fingers and ears, without eyes!

https://github.com/user-attachments/assets/4fd3d899-7153-4029-8643-4775c699265e
