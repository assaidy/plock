# Plock - Python Clock and Timer

This Python script provides a clock and timer functionality using the `curses` library.
It displays a real-time clock, counts up, or counts down from a specified time.
The script also plays a bell sound when the countdown timer reaches zero.

## Features

- **Clock Mode:** Displays the current time in HH:MM:SS format.
- **Count Up Timer:** Counts up from 0 or a specified start time.
- **Count Down Timer:** Counts down from a specified start time and plays a bell sound when finished.
- **Responsive UI:** Adjusts the display when the terminal window is resized.

## Requirements

- Python 3.x
- `curses` library (included in the Python Standard Library)
- `aplay` utility for Linux to play sound
- `afplay` utility for macOS to play sound

## Usage

Run the script with the following options:

```
Usage: plock [OPTION] [TIME_FORMAT]

without options:    normal clock

OPTIONS:
    up      [TIME_FORMAT]    Start a count-up timer
    down    [TIME_FORMAT]    Start a count-down timer
    help                     print help

time formats: [$h $m $s] [$h] [$m] [$s]
```

### Examples

- **Clock Mode:**

  ```sh
  plock
  ```

- **Count Up Timer from 0:**

  ```sh
  plock up
  ```

- **Count Up Timer from 1 hour, 30 minutes, and 45 seconds:**

  ```sh
  plock up "1h 30m 45s"
  ```

- **Count Down Timer from 10 minutes:**

  ```sh
  plock down "10m"
  ```

## Installation

  ```sh
  ./install.sh
  ```

## Notes

- The script uses the `curses` library to create a terminal-based user interface.
- On Linux, the script uses `aplay` to play the sound. Ensure `aplay` is installed (comes with `alsa-utils`).
- On macOS, the script uses `afplay` to play the sound, which is included with macOS.
- The script does not support sound playback on Windows.
