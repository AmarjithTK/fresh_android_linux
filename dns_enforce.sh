#!/system/bin/sh

# Clear existing nat table rules
iptables -t nat -F

# Redirect all DNS queries to Cloudflare's Malware and Adult Content blocking DNS
iptables -t nat -A OUTPUT -p udp --dport 53 -j DNAT --to-destination 1.1.1.3:53
iptables -t nat -A OUTPUT -p tcp --dport 53 -j DNAT --to-destination 1.1.1.3:53

# Set DNS properties
setprop net.dns1 1.1.1.3
setprop net.dns2 1.0.0.3
