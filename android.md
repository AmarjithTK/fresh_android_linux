# Android DNS & Hosts File Manager

A toolkit to manage DNS settings and hosts file blocking on rooted Android devices.

## Requirements
- Rooted Android device
- ADB access
- Magisk installed

## Features
- DNS enforcement at boot
- System-wide content blocking via hosts file
- Blocks:
  - Social media (Instagram, etc.)
  - Adult content
  - Proxy/VPN bypass services
  - News sites (English & Malayalam)
  - YouTube thumbnails (requires Brave browser)
- Google feed removal option

## Installation

### DNS Enforcement
1. Push DNS script:
```bash
adb push dns_enforce.sh /sdcard/
adb shell "su -c 'cp /sdcard/dns_enforce.sh /data/adb/service.d/ && chmod 0700 /data/adb/service.d/dns_enforce.sh'"
```

### Hosts File Installation
1. Push hosts file:
```bash
adb push hosts_blocklist /sdcard/
adb shell "su -c 'mount -o rw,remount /system'"
adb shell "su -c 'cp /sdcard/hosts_blocklist /system/etc/hosts'"
adb shell "su -c 'chmod 644 /system/etc/hosts'"
```

2. Verify installation:
```bash
adb shell "su -c 'cat /system/etc/hosts'"
```

### Optional: Remove Google Feed
To remove Google discover feed and search:
```bash
adb shell pm uninstall --user 0 com.google.android.googlequicksearchbox
```

### Brave Browser Setup
Add the following to Brave's content filters:
```
||i.ytimg.com^
```
This will disable YouTube thumbnails while preserving video titles.

## Activation
Reboot device to activate all changes:
```bash
adb reboot
```

## Updates
- DNS settings update automatically at boot
- Hosts file can be updated by repeating the hosts file installation steps
