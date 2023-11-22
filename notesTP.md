# Grid5000

## Se connecter

On se connected en ssh à access.grid5000.fr (frontale du réseau), puis depuis ça on `ssh <nomdusite>`, on accède à la machine frontale de ce site ; depuis ça on réserve une ressource (machine) ded ce site avec `oarsub -I -l walltime=2:0:0 -p "cluster='gros'"` (-l walltime est une prop de la réservation, -p permet de filtrer la mahcine (là on veut que les machines du clster gros))

Alternativement, on peut utiliser ce .ssh/config pour se connecter directement à un site avec comme host `site.g5k`

```
Host g5k
  User login
  Hostname access.grid5000.fr
  ForwardAgent no

Host *.g5k
  User login
  ProxyCommand ssh g5k -W "$(basename %h .g5k):%p"
  ForwardAgent no
```

## Principes
Les fichiers de /home sont partagés à l'échelle d'un site (NFS). Donc si je me connecte à la frontale d'un site, je peux déjà accéder à tous mes fichiers.  
Par contre, pour faire tourner quoi que ce soit je dois utiliser une machine réservée avec oarsub

## Travailler avec VSCode SSH
