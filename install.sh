echo "Retrieve information"
hostnamectl
uname -m
ping -c 1 google.com
ffmpeg -version | head -1

read -p "press enter to continue"
sudo apt update

echo "Install ffmpeg"
sudo apt install ffmpeg

ARCH=$(uname -m)

if [[ "$ARCH" == armv7l || "$ARCH" == armv6l ]]; then
    mv -f go2rtc_linux_arm go2rtc
elif [[ "$ARCH" == aarch64 ]]; then
    mv -f go2rtc_linux_arm64 go2rtc
else
    echo "Unsupported architecture: $ARCH"; exit 1
fi

chmod +x go2rtc

sudo mv go2rtc /usr/local/bin/go2rtc

echo "Install as service"
sudo cp go2rtc.service /etc/systemd/system/go2rtc.service

sudo systemctl daemon-reload
sudo systemctl enable go2rtc
sudo systemctl start go2rtc

echo "Install go2rtc done"
