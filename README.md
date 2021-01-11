# docker-vpn
Juste un petit test d'un VPN PPTP client dans un container Docker

zf210111.1049


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

Après on doit pouvoir faire un *ping* sur une adresse privée de son *Intranet* du style:
```
ping 192.168.0.51
```

Ou aussi voir avec quelle adresse IP on *sort*:
```
curl http://ifconfig.me/
```
On devrait *sortir* avec l'adresse IP de l'*Itranet* !


## Problème s'il n'y a pas de DNS qui fonctionne !
Des fois, les DNS des serveurs qui se *trouvent* dans le Cloud n'acceptent pas d'être *utiliséa* en dehors de leur *réseau* !

Il faut donc utiliser un DNS *public* comme celui de Google par exemple.

Pour modifier son DNS sur son serveur du Cloud, il fait faire:
```
sudo nano /etc/resolv.conf
```
Et mettre ceci comme DNS:
```
nameserver 8.8.8.8
```


