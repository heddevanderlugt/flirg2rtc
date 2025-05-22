# FLIRGO2RTC
## Summary
Creates a RTSP stream from a FLIR boson usb camera on Raspberry PI
Uses ffmpeg, go2rtc

For ease of installation a copy of go2rtc is include in this repository.
These are obtained from:
https://github.com/AlexxIT/go2rtc/releases/download/v1.9.9/go2rtc_linux_arm64 

## Installation
1. Clone the repository:
    ```bash
    https://github.com/heddevanderlugt/flirg2rtc/archive/refs/heads/main.zip
    ```

2. Navigate to the project directory:
    ```bash
    cd flirgo2rtc
    ```
3. Install as service:
    ```bash
    source install.sh
    ```

## Usage
2. Open VLC or other RTSP capable viewer
    Open stream rtsp://yourpihostname:8554/flir