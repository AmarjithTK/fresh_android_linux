# Linux Host-Based Blocking

Quick guide for managing system-wide content blocking via /etc/hosts

## Setup


make backup of hosts file to backups folder

1. Make hosts file writable:
```bash
sudo chattr -i /etc/hosts
```

2. Apply blocklist:
```bash
sudo su
cat blocklist_unified_linux >> /etc/hosts
```

3. Make immutable:
```bash
sudo chattr +i /etc/hosts
```

4. Verify:
```bash
lsattr /etc/hosts
```

