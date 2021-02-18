#!/bin/bash

echo "Limpiando reglas..."
iptables -t nat -F
iptables -t mangle -F
iptables -F
iptables -X
iptables -Z
echo "Hecho"

echo "Prohibiendo conexiones..."
iptables --policy INPUT DROP
iptables --policy OUTPUT DROP
iptables --policy FORWARD DROP
iptables -I INPUT -j DROP
echo "Hecho"