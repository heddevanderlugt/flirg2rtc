# FLIRGO2RTC

## Summary

This project creates an RTSP stream from a FLIR Boson USB camera on a Raspberry Pi using FFmpeg and go2rtc.

For ease of installation, a precompiled version of `go2rtc` is included in this repository.
Source: [go2rtc v1.9.9 for ARM64](https://github.com/AlexxIT/go2rtc/releases/download/v1.9.9/go2rtc_linux_arm64)

## Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/heddevanderlugt/flirgo2rtc.git
   ```

2. Navigate to the project directory:

   ```bash
   cd flirgo2rtc
   ```

3. Install the service:

   ```bash
   source install.sh
   ```

## Usage

Open VLC or any other RTSP-compatible viewer and connect to the stream:

```
rtsp://your-pi-hostname:8554/flir
```

