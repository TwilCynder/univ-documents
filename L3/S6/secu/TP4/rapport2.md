# Création et gestion

## Création
```
twilcynder@TWIL-DESKTOP:~/.gnupg$ gpg --list-packets base64.gpg
# off=0 ctb=99 tag=6 hlen=3 plen=397
:public key packet:
        version 4, algo 1, created 1650043474, expires 0
        pkey[0]: [3072 bits]
        pkey[1]: [17 bits]
        keyid: 06F2670D59D7ADB3
# off=400 ctb=b4 tag=13 hlen=2 plen=42
:user ID packet: "TeoTinarrage <teo.tinarrage@univ-tlse3.fr>"
# off=444 ctb=89 tag=2 hlen=3 plen=468
:signature packet: algo 1, keyid 06F2670D59D7ADB3
        version 4, created 1650043474, md5len 0, sigclass 0x13
        digest algo 10, begin of digest 5d 9c
        hashed subpkt 33 len 21 (issuer fpr v4 90198449F6D6A95710D250D206F2670D59D7ADB3)
        hashed subpkt 2 len 4 (sig created 2022-04-15)
        hashed subpkt 27 len 1 (key flags: 03)
        hashed subpkt 9 len 4 (key expires after 2y0d0h0m)
        hashed subpkt 11 len 4 (pref-sym-algos: 9 8 7 2)
        hashed subpkt 21 len 5 (pref-hash-algos: 10 9 8 11 2)
        hashed subpkt 22 len 3 (pref-zip-algos: 2 3 1)
        hashed subpkt 30 len 1 (features: 01)
        hashed subpkt 23 len 1 (keyserver preferences: 80)
        subpkt 16 len 8 (issuer key ID 06F2670D59D7ADB3)
        data: [3072 bits]
# off=915 ctb=b9 tag=14 hlen=3 plen=397
:public sub key packet:
        version 4, algo 1, created 1650043474, expires 0
        pkey[0]: [3072 bits]
        pkey[1]: [17 bits]
        keyid: E940020DE524AB2F
# off=1315 ctb=89 tag=2 hlen=3 plen=444
:signature packet: algo 1, keyid 06F2670D59D7ADB3
        version 4, created 1650043474, md5len 0, sigclass 0x18
        digest algo 10, begin of digest 98 1a
        hashed subpkt 33 len 21 (issuer fpr v4 90198449F6D6A95710D250D206F2670D59D7ADB3)
        hashed subpkt 2 len 4 (sig created 2022-04-15)
        hashed subpkt 27 len 1 (key flags: 0C)
        hashed subpkt 9 len 4 (key expires after 2y0d0h0m)
        subpkt 16 len 8 (issuer key ID 06F2670D59D7ADB3)
        data: [3072 bits]
```

## Certificat de révocation
```
gpg --output revoke.asc --gen-revoke teo.tinarrage@univ-tlse3.fr
```

## Clef secondaires
Pour créer des subkeys/clefs secondaires, on utilise `gpg --edit-key teo.tinarrage@univ-tlse3.fr` pour passer en mode édition de la clé (gpg est en mode interactif/prompt)  
On entre ensuite la commande `addkey` pour ajouter une clé :   

```
gpg --edit-key teo.tinarrage@univ-tlse3.fr
gpg (GnuPG) 2.2.19; Copyright (C) 2019 Free Software Foundation, Inc.
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Secret key is available.

sec  rsa3072/06F2670D59D7ADB3
     created: 2022-04-15  expires: 2024-04-14  usage: SC
     trust: ultimate      validity: ultimate
ssb  rsa3072/E940020DE524AB2F
     created: 2022-04-15  expires: 2024-04-14  usage: E
[ultimate] (1). TeoTinarrage <teo.tinarrage@univ-tlse3.fr>

gpg> addkey
Please select what kind of key you want:
   (3) DSA (sign only)
   (4) RSA (sign only)
   (5) Elgamal (encrypt only)
   (6) RSA (encrypt only)
  (14) Existing key from card
```
On choisit ensuite le type de clé à créer (respectivement 3, 5 et 4 pour celles demandées dans l'énoncé) 

## Révocation et création

```
gpg --edit-key teo.tinarrage@univ-tlse3.fr
gpg (GnuPG) 2.2.19; Copyright (C) 2019 Free Software Foundation, Inc.
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Secret key is available.

sec  rsa3072/06F2670D59D7ADB3
     created: 2022-04-15  expires: 2024-04-14  usage: SC
     trust: ultimate      validity: ultimate
ssb  rsa3072/E940020DE524AB2F
     created: 2022-04-15  expires: 2024-04-14  usage: E
ssb  dsa2048/D498C7F60655D818
     created: 2022-04-15  expires: never       usage: S
ssb  elg3072/56F1B19B95538F1D
     created: 2022-04-15  expires: never       usage: E
ssb  rsa3072/ADAF17254333B780
     created: 2022-04-15  expires: never       usage: S
[ultimate] (1). TeoTinarrage <teo.tinarrage@univ-tlse3.fr>

gpg> key E940020DE524AB2F

sec  rsa3072/06F2670D59D7ADB3
     created: 2022-04-15  expires: 2024-04-14  usage: SC
     trust: ultimate      validity: ultimate
ssb* rsa3072/E940020DE524AB2F
     created: 2022-04-15  expires: 2024-04-14  usage: E
ssb  dsa2048/D498C7F60655D818
     created: 2022-04-15  expires: never       usage: S
ssb  elg3072/56F1B19B95538F1D
     created: 2022-04-15  expires: never       usage: E
ssb  rsa3072/ADAF17254333B780
     created: 2022-04-15  expires: never       usage: S
[ultimate] (1). TeoTinarrage <teo.tinarrage@univ-tlse3.fr>

gpg> revkey
Do you really want to revoke this subkey? (y/N) y
Please select the reason for the revocation:
  0 = No reason specified
  1 = Key has been compromised
  2 = Key is superseded
  3 = Key is no longer used
  Q = Cancel
Your decision? 0
Enter an optional description; end it with an empty line:
>
Reason for revocation: No reason specified
(No description given)
Is this okay? (y/N) y

sec  rsa3072/06F2670D59D7ADB3
     created: 2022-04-15  expires: 2024-04-14  usage: SC
     trust: ultimate      validity: ultimate
The following key was revoked on 2022-04-16 by RSA key 06F2670D59D7ADB3 TeoTinarrage <teo.tinarrage@univ-tlse3.fr>
ssb  rsa3072/E940020DE524AB2F
     created: 2022-04-15  revoked: 2022-04-16  usage: E
ssb  dsa2048/D498C7F60655D818
     created: 2022-04-15  expires: never       usage: S
ssb  elg3072/56F1B19B95538F1D
     created: 2022-04-15  expires: never       usage: E
ssb  rsa3072/ADAF17254333B780
     created: 2022-04-15  expires: never       usage: S
[ultimate] (1). TeoTinarrage <teo.tinarrage@univ-tlse3.fr>

gpg> addkey
Please select what kind of key you want:
   (3) DSA (sign only)
   (4) RSA (sign only)
   (5) Elgamal (encrypt only)
   (6) RSA (encrypt only)
  (14) Existing key from card
Your selection? 5
ELG keys may be between 1024 and 4096 bits long.
What keysize do you want? (3072)
Requested keysize is 3072 bits
Please specify how long the key should be valid.
         0 = key does not expire
      <n>  = key expires in n days
      <n>w = key expires in n weeks
      <n>m = key expires in n months
      <n>y = key expires in n years
Key is valid for? (0) 1y
Key expires at Sun Apr 16 02:28:24 2023 CEST
Is this correct? (y/N) y
Really create? (y/N) y
We need to generate a lot of random bytes. It is a good idea to perform
some other action (type on the keyboard, move the mouse, utilize the
disks) during the prime generation; this gives the random number
generator a better chance to gain enough entropy.

sec  rsa3072/06F2670D59D7ADB3
     created: 2022-04-15  expires: 2024-04-14  usage: SC
     trust: ultimate      validity: ultimate
The following key was revoked on 2022-04-16 by RSA key 06F2670D59D7ADB3 TeoTinarrage <teo.tinarrage@univ-tlse3.fr>
ssb  rsa3072/E940020DE524AB2F
     created: 2022-04-15  revoked: 2022-04-16  usage: E
ssb  dsa2048/D498C7F60655D818
     created: 2022-04-15  expires: never       usage: S
ssb  elg3072/56F1B19B95538F1D
     created: 2022-04-15  expires: never       usage: E
ssb  rsa3072/ADAF17254333B780
     created: 2022-04-15  expires: never       usage: S
ssb  elg3072/43C05CD3881E7266
     created: 2022-04-16  expires: 2023-04-16  usage: E
[ultimate] (1). TeoTinarrage <teo.tinarrage@univ-tlse3.fr>

gpg> addkey
Please select what kind of key you want:
   (3) DSA (sign only)
   (4) RSA (sign only)
   (5) Elgamal (encrypt only)
   (6) RSA (encrypt only)
  (14) Existing key from card
Your selection? 3
DSA keys may be between 1024 and 3072 bits long.
What keysize do you want? (2048)
Requested keysize is 2048 bits
Please specify how long the key should be valid.
         0 = key does not expire
      <n>  = key expires in n days
      <n>w = key expires in n weeks
      <n>m = key expires in n months
      <n>y = key expires in n years
Key is valid for? (0) 1y
Key expires at Sun Apr 16 02:29:01 2023 CEST
Is this correct? (y/N) y
Really create? (y/N) y
We need to generate a lot of random bytes. It is a good idea to perform
some other action (type on the keyboard, move the mouse, utilize the
disks) during the prime generation; this gives the random number
generator a better chance to gain enough entropy.
gpg: WARNING: some OpenPGP programs can't handle a DSA key with this digest size

sec  rsa3072/06F2670D59D7ADB3
     created: 2022-04-15  expires: 2024-04-14  usage: SC
     trust: ultimate      validity: ultimate
The following key was revoked on 2022-04-16 by RSA key 06F2670D59D7ADB3 TeoTinarrage <teo.tinarrage@univ-tlse3.fr>
ssb  rsa3072/E940020DE524AB2F
     created: 2022-04-15  revoked: 2022-04-16  usage: E
ssb  dsa2048/D498C7F60655D818
     created: 2022-04-15  expires: never       usage: S
ssb  elg3072/56F1B19B95538F1D
     created: 2022-04-15  expires: never       usage: E
ssb  rsa3072/ADAF17254333B780
     created: 2022-04-15  expires: never       usage: S
ssb  elg3072/43C05CD3881E7266
     created: 2022-04-16  expires: 2023-04-16  usage: E
ssb  dsa2048/D19E2F46518B374D
     created: 2022-04-16  expires: 2023-04-16  usage: S
[ultimate] (1). TeoTinarrage <teo.tinarrage@univ-tlse3.fr>

gpg>
```

# II Confiance
## Empreintes des clés 
teo.tinarrage@univ-tlse3.fr : 9019 8449 F6D6 A957 10D2  50D2 06F2 670D 59D7 ADB3
emilie.tortel@univ-tlse3.fr : 3B9C 5340 531C 41D3 8AEB  542C 5238 098B CF90 1525

## Transfert
Les clés publiques sont exportées sous forme de fichier avec `gpg --export -o file.gpg identifiant` (ici les identifiants sont nos mails @univ-tlse3.fr), puis uploadées sur un serveur.  
Une fois téléchargées, on les ajoute au trousseau local avec `gpg --import file.gpg`

**Du côté d'émilie** : `gpg --export -o tortel.gpg emilie.tortel@univ-tlse3.fr` ; puis après avoir téléchargé ma clé ; `gpg --import tinarrage.gpg`
**De mon côté** : `gpg --import tortel.gpg` ; puis après avoir téléchargé sa clé ; `gpg --import tortel.gpg`

Pour ce qui est du niveau de confiance, je n'ai pas bien compris ce qu'on entend par "niveau de confiance casual", car le terme casual n'apparaît jamais dans la documentation que j'ai trouvé, je considère donc qu'on veut dire "marginal"  

les captures d'écrans et markdown ne font pas bon ménage donc voici une copie du terminal

```
twilcynder@TWIL-DESKTOP:/mnt/c/Users/twilc/Prog/fac/univ-documents/L3/S6/secu/TP4$ gpg --edit-key emilie.tortel@univ-tlse3.fr
gpg (GnuPG) 2.2.19; Copyright (C) 2019 Free Software Foundation, Inc.
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.


pub  rsa3072/5238098BCF901525
     created: 2022-04-16  expires: 2024-04-15  usage: SC
     trust: marginal      validity: unknown
sub  rsa3072/FDA42A731BDFCC10
     created: 2022-04-16  expires: 2024-04-15  usage: E
[ unknown] (1). EmilieTortel <emilie.tortel@univ-tlse3.fr>

gpg> trust m
pub  rsa3072/5238098BCF901525
     created: 2022-04-16  expires: 2024-04-15  usage: SC
     trust: marginal      validity: unknown
sub  rsa3072/FDA42A731BDFCC10
     created: 2022-04-16  expires: 2024-04-15  usage: E
[ unknown] (1). EmilieTortel <emilie.tortel@univ-tlse3.fr>

Please decide how far you trust this user to correctly verify other users' keys
(by looking at passports, checking fingerprints from different sources, etc.)

  1 = I don't know or won't say
  2 = I do NOT trust
  3 = I trust marginally
  4 = I trust fully
  5 = I trust ultimately
  m = back to the main menu

Your decision? 3

pub  rsa3072/5238098BCF901525
     created: 2022-04-16  expires: 2024-04-15  usage: SC
     trust: marginal      validity: unknown
sub  rsa3072/FDA42A731BDFCC10
     created: 2022-04-16  expires: 2024-04-15  usage: E
[ unknown] (1). EmilieTortel <emilie.tortel@univ-tlse3.fr>

gpg> sign

pub  rsa3072/5238098BCF901525
     created: 2022-04-16  expires: 2024-04-15  usage: SC
     trust: marginal      validity: unknown
 Primary key fingerprint: 3B9C 5340 531C 41D3 8AEB  542C 5238 098B CF90 1525

     EmilieTortel <emilie.tortel@univ-tlse3.fr>

This key is due to expire on 2024-04-15.
Are you sure that you want to sign this key with your
key "TeoTinarrage <teo.tinarrage@univ-tlse3.fr>" (06F2670D59D7ADB3)

Really sign? (y/N) y

gpg> quit
Save changes? (y/N) y
```

# III Chiffrement et déchiffrement
J'ai la clé du destinataire, emilie.tortel@univ-tlse3.fr  

Pour chiffrer le document test.txt : 
```
gpg --output doc.gpg --encrypt --recipient emilie.tortel@univ-tlse3.fr test.txt
```  
Version cryptée de test.txt stockée dans doc.gpg  

J'envoie doc.gpg au destinataire, qui le déchiffre avec la commande : 

```
gpg --output decrypt.txt --decrypt doc.gpg
```  
Il faut alors entrer le mot de passe de emilie.tortel@univ-tlse3.fr : je récupère bien, dans decrypt.txt, le contenu du message original test.txt  

Seul emilie.tortel@univ-tlse3.fr peut effectuer le décryptage car celui-ci a été crypté en uilisant sa clé publique, et ne peut donc être décrypté qu'en utilisant la clé privée correspondante, qu'elle est la seule à posséder (si tout va bien).  

# IV Signer et vérifier  
Pour signer un message, j'utilise 

```
gpg --sign -o signed.gpg test.txt
```

Pour vérifier la signature et obtenir l'identité du signataire, j'utilise  

```
gpg --verify signed.gpg
```  
GPG m'indique bien `Good signature from "TeoTinarrage <teo.tinarrage@univ-tlse3.fr>"`

# V Web of trust
```
 gpg --list-sig
gpg: checking the trustdb
gpg: marginals needed: 3  completes needed: 1  trust model: pgp
gpg: depth: 0  valid:   1  signed:   1  trust: 0-, 0q, 0n, 0m, 0f, 1u
gpg: depth: 1  valid:   1  signed:   0  trust: 0-, 0q, 0n, 1m, 0f, 0u
gpg: next trustdb check due at 2024-04-14
/home/twilcynder/.gnupg/pubring.kbx
-----------------------------------
pub   rsa3072 2022-04-15 [SC] [expires: 2024-04-14]
      90198449F6D6A95710D250D206F2670D59D7ADB3
uid           [ultimate] TeoTinarrage <teo.tinarrage@univ-tlse3.fr>
sig 3        06F2670D59D7ADB3 2022-04-15  TeoTinarrage <teo.tinarrage@univ-tlse3.fr>
sub   rsa3072 2022-04-15 [E] [expires: 2024-04-14]
sig          06F2670D59D7ADB3 2022-04-15  TeoTinarrage <teo.tinarrage@univ-tlse3.fr>
sub   dsa2048 2022-04-15 [S]
sig          06F2670D59D7ADB3 2022-04-15  TeoTinarrage <teo.tinarrage@univ-tlse3.fr>
sub   elg3072 2022-04-15 [E]
sig          06F2670D59D7ADB3 2022-04-15  TeoTinarrage <teo.tinarrage@univ-tlse3.fr>
sub   rsa3072 2022-04-15 [S]
sig          06F2670D59D7ADB3 2022-04-15  TeoTinarrage <teo.tinarrage@univ-tlse3.fr>

pub   rsa3072 2022-04-16 [SC] [expires: 2024-04-15]
      3B9C5340531C41D38AEB542C5238098BCF901525
uid           [  full  ] EmilieTortel <emilie.tortel@univ-tlse3.fr>
sig 3        5238098BCF901525 2022-04-16  EmilieTortel <emilie.tortel@univ-tlse3.fr>
sig          06F2670D59D7ADB3 2022-04-16  TeoTinarrage <teo.tinarrage@univ-tlse3.fr>
sub   rsa3072 2022-04-16 [E] [expires: 2024-04-15]
sig          5238098BCF901525 2022-04-16  EmilieTortel <emilie.tortel@univ-tlse3.fr>
```

