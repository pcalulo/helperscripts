# Sets up a NAT. Intended for use when routing stuff from WiFi to a tethered
# Android device. Tested with a Nexus 4.

iptables -A FORWARD -o usb0 -i wlan0 -s 10.0.0.0/24 -m conntrack --ctstate NEW -j ACCEPT
iptables -A FORWARD -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT
iptables -t nat -F POSTROUTING
iptables -t nat -A POSTROUTING -o usb0 -j MASQUERADE
