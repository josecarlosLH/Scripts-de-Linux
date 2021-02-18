#! /bin/bash

echo "Limpiando reglas..."
iptables -t nat -F
iptables -t mangle -F
iptables -F
iptables -X
iptables -Z
echo "Hecho"

echo "Dando permiso a todas las conexiones..."
iptables --policy INPUT ACCEPT
iptables --policy OUTPUT ACCEPT
iptables --policy FORWARD ACCEPT
iptables -I INPUT -j ACCEPT
echo "Todo hecho. Adiós"