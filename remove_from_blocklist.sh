#!/bin/bash

HOSTS_FILE="blocklist_unified"
# BACKUP_FILE="/etc/hosts.backup"

# # Create a backup before modifying
# cp "$HOSTS_FILE" "$BACKUP_FILE"

# Remove all lines containing 'whatsapp'
sed -i '/whatsapp/d' "$HOSTS_FILE"

echo "WhatsApp entries removed from $HOSTS_FILE."
