# Arch Linux Setup Guide

## Initial Setup

1. Generate SSH key and add to GitHub:
```bash
ssh-keygen -t ed25519 -C "your@email.com"
cat ~/.ssh/id_ed25519.pub
# Add the key to GitHub settings
```

2. Clone specific branch:
```bash 
git clone -b main2 --single-branch --depth 1 git@github.com:AmarjithTK/smartDots.git
```

3. Run setup script:
```bash
cd smartDots
chmod +x setup.sh
./setup.sh
```

## VPN Setup

### Option 1: ProtonVPN
```bash
sudo pacman -S protonvpn-gui
```

### Option 2: Manual OpenVPN
1. Download .ovpn config from dashboard
2. Connect using credentials:
```bash
sudo su
openvpn --config your-config.ovpn
# Enter OpenVPN credentials when prompted
```