#!/bin/sh
# Create new chain
iptables -t nat -N V2RAY
# Ignore your V2Ray server's addresses
# It's very IMPORTANT, just be careful.
#todo
iptables -t nat -A V2RAY -d xxx.xx.xx.xx -j RETURN
# Ignore LANs and any other addresses you'd like to bypass the proxy
# See Wikipedia and RFC5735 for full list of reserved networks.
iptables -t nat -A V2RAY -d 0.0.0.0/8 -j RETURN
iptables -t nat -A V2RAY -d 10.0.0.0/8 -j RETURN
iptables -t nat -A V2RAY -d 127.0.0.0/8 -j RETURN
iptables -t nat -A V2RAY -d 169.254.0.0/16 -j RETURN
iptables -t nat -A V2RAY -d 172.16.0.0/12 -j RETURN
iptables -t nat -A V2RAY -d 192.168.0.0/16 -j RETURN
iptables -t nat -A V2RAY -d 224.0.0.0/4 -j RETURN
iptables -t nat -A V2RAY -d 240.0.0.0/4 -j RETURN

# Anything else should be redirected to Dokodemo-door's local port
iptables -t nat -A V2RAY -p tcp -j REDIRECT --to-ports 31081
# Apply the rules
iptables -t nat -A PREROUTING -p tcp -j V2RAY
