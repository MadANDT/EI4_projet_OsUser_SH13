# EI4_projet_OsUser_SH13
### ANDRIATSILAVO Matteo - TP A
Dépôt Git publique pour le rendu du projet OS USER: implémenter le jeu de plateau Sherlock 13 en langage C dans une architecture client/serveur.

# Exécution du code
Pour exécuter le code, vous devez avoir les fichiers suivants dans le même répertoire:
- `sh13.c`
- `server.c`
- le `Makefile`
- la police d'écriture `sans.ttf`
- les images (deux pour les boutons, treize pour les personnages, neuf pour les objets, une pour la grille).

Un simple `make` permet de compiler les fichiers sources du serveur et du client en exéutables,
facultativement, exécuter `./cmd.sh` fonctionne aussi:
``` bash
$ make
```
ou
``` bash
$ ./cmd.sh
```

Certaines librairies peuvent ne pas être disponibles par défaut sur votre machine, il faut donc les installer.

## Lancer le jeu

Dans un premier terminal, pour le serveur, exécuter:
```bash
$ ./server <num_port>
```
Le numéro de port ne doit pas poser conflit, par exemple: `12340` (nous l'utiliserons dans la suite de l'exemple).

Dans quatre fenêtres de terminal différentes, une pour chaque joueur (client), exécuter:
```bash
$ ./sh13 <adresseIP_serveur> <num_port> <adresseIP_client> <port_client> <nomJoueur>
```

Si le serveur et le client tournent sur le même réseau, alors les adresses IP sont les mêmes;
si de plus ils tournent sur la même machine: celle-ci est `127.0.0.1`.
chaque port client doit être unique et les noms de joueur également.

Le jeu peut commencer lorsque chaque joueur sera connecté (en cliquant sur `connect`).

Un rapport est disponible dans le fichier PDF.