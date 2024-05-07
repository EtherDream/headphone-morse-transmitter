# 🎧 Morse Transmitter

Many headphones can send commands to its device, such as Airpods, with a single press to pause or resume, double press to play the next track, and triple press to play the previous track.

Using this feature, we can use the headphones as a morse transmitter.

## Demo

[https://etherdream.github.io/headphone-morse-transmitter/](https://etherdream.github.io/headphone-morse-transmitter/)

https://github.com/EtherDream/headphone-morse-transmitter/assets/1072787/c5353575-128f-4915-8607-8f1a49d47a5a

If you're using an Airpod, a single press sends a dit (.) , a double press sends a dah(-), and a triple press deletes the previous character.

When the delay time is reached, the dit and dah codes in the input will be converted to a letter or number.

Shorter delays allow faster input, but also increase the chance of errors.

> Known issues: Firefox seems to have some issues with handling headphone events.