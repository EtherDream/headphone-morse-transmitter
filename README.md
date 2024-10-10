# 🎧 Morse Transmitter

Many headphones can send commands to its device, such as Airpods, with a single press to pause or resume, double press to play the next track, and triple press to play the previous track.

Using this feature, we can use the headphones as a morse transmitter.

## Demo

[https://etherdream.github.io/headphone-morse-transmitter/](https://etherdream.github.io/headphone-morse-transmitter/)

⏸️ = dit (.)

⏯️ = dah (-)

⏮️ = flush or backspace

https://github.com/user-attachments/assets/44faa4b1-9ab1-43a3-9e6d-8add6a3f3b26

When ⏮️ is pressed or `delay` timeout is reached, the `.` and `-` codes in the input buffer will be flushed.

If the input buffer is empty, pressing ⏮️ deletes the last char.

If you don't want to use a headphone, you can also use the multimedia keys on the keyboard, which can even set a shorter delay, such as 500ms:

https://github.com/user-attachments/assets/6b51ff7e-8c3b-4607-8da6-8e6534e57c74

> [!Tip]
> This program can run in the background, even if the browser is minimized or the screen is locked. So you can use this program on your phone to practice Morse code, using only your fingers and ears, without eyes!

## Known Issues

Firefox is unstable on multiple systems.

Under MacOS, sometimes only one headset can send commands (e.g. my AirPods right headset works fine, but left headset won't pause multiple times).

Under some Windows, the first ~0.5s of sound is lost (even when saved to disk with the system player, probably a playback buffer issue), but Chrome works fine.
