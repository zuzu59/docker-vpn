# docker-vpn
Juste un petit test d'un VPN PPTP client dans un container Docker

zf210111.1030


# Buts
Permettre de se connecter sur son Intranet depuis un serveur externe à son réseau local


# Moyen
On va utiliser un container Docker qui va nous permettre d'avoir un VPN sur la machine distante sans rien devoir installer sur la machine


## Installation
Il faut configurer les secrets avec:
```
cp vpn_secrets.sh.example vpn_secrets.sh
nano vpn_secrets.sh
```


## Utilisation
Simplement faire:
```
./start.sh
```

Après on peut essayer de faire un ping sur une adresse privée de son Intranet du style:
``Permettre de se connecter
ping 192.168.0.51
```


