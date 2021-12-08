- [Sujet](#sujet)
  - [Users](#users)
  - [Groupes](#groupes)
  - [Ticket](#ticket)
    - [Arborescence](#arborescence)
    - [Messages](#messages)
  - [Communication](#communication)
    - [Serveur](#serveur)
  - [Questions](#questions)
- [Dossier de conception](#dossier-de-conception)

# Sujet

## Users
- Utilisateurs du campus = etudiants + profs
- Services admin/techniques

Se connectent avec mdp et id  
Possèdent un nom+prénom (c'est ça qui est affiché)


## Groupes
Groupes d'users (possibilité d'appartenir à plusieurs groupes): 
- formations
- groupes de TD
- services
- etc

## Ticket
Système de ticket : envoyés par un user à un groupes (ne peut appartie)
- utilisateurs du service ne peuvent envoyer qu'aux services
- vice versa

-> tous les membres du groupe reçoivent le ticket (on ne peut pas voir les ticket qui ne nous sont pas adressés), ils peuvent tous répondre  
Chaque ticket est lié à un fil de messages

### Arborescence 
- Premier niveau (sous la racine) : les groupes (dans lequel un ticket existe)  
- Deuxième niveau (sous chaque groupe) : tickets créés pour ce groupe (classés par ordre de celui qui a reçu le dernier message)

Pour chaque node afficher nombre de messages non-lus + en gras si il y en a

### Messages
Possède un titre  
Pour chaque ticket, une liste de messages (fil de discussion) 
Affichés les uns sous les autres  
Pour chaque message, afficher : 
- auteur
- date
- contenu

Statut pour chaque utilisateur concerné par le message : 
- Reçu : s'est connecté depuis que le message a été envoyé (= le message a déjà été envoyé au client sur lequel cet user est co)
- Lu : l'user a cliqué sur le ticket

Marqués en attente si pas encore reçu par le serveur  

Affiché en : 
- Gris si pas encore reçu par serveur
- Rouge si des users n'ont pas encore reçu
- Orange si des users n'ont pas encore lu
- Vert si tout le moned a lu

Premier message créé avec le fil  

## Communication 
Via un serveur  
tah discord  

### Serveur

Quand un user se connecte : envoi de tous les messages relevant

Interface graphique pour le serveur pour gérer : 
- liste des users
- users dans chaque groupe
- liste des groupes

## Questions
- affichage des tickets envoyés

# Dossier de conception
- Protocole de communication client/serveur  
- Maquette des interfaces
- Diagramme de classe
- Base de données (modèle relationel)