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
sudo pacman -S --noconfirm proton-vpn-gtk-app
```

### Option 2: Manual OpenVPN
1. Download .ovpn config from dashboard
2. Connect using credentials:
```bash
sudo su
openvpn --config your-config.ovpn
# Enter OpenVPN credentials when prompted
```

## Additional Programs

### Package Managers
```bash
# Install Flatpak
sudo pacman -S flatpak

# Add Flathub repository
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```

### System Configurations

#### Fix Backlight Controls
Add kernel parameter for native backlight control:
```bash
sudo vim /etc/default/grub
```

Add `acpi_backlight=native` to the `GRUB_CMDLINE_LINUX_DEFAULT` line:
```
GRUB_CMDLINE_LINUX_DEFAULT="quiet splash acpi_backlight=native"
```

Update GRUB configuration:
```bash
sudo grub-mkconfig -o /boot/grub.cfg
```
