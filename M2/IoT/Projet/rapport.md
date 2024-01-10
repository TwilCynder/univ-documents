## Difficultés

### Configuration du raspberry pi
On travaille sur notre raspberry pi auquel on accède depuis nos ordinateurs via SSH.  

Nous avons du installer python et sense-hat. Problème : pour pouvoir accéder aux Raspi, ces derniers doivent être connectés au réseau SECLI-305, qui n'a pas d'accès à internet ; l'installation doit donc se faire "manuellement" (via les archives de ces libs).  

Dans un premier temps nous ignorons que python n'est pas installé, donc on télécharge juste le fichier whl de la lib (qui peut être ensuite installé par pip), qu'on envoie ensuite sur le pi via scp.  
C'est le moment où on se rend compte que python n'est pas là, et ne voulant pas nous embêter avec l'installation manuelle de python, nous essayons d'abord de connecter le pi à internet. Pour cela on se résoud finalement à abandonner ssh pour l'instant et brancher le pi à un écran+clavier+souris. Il s'avère que l'OS du pi a été installé en mode headless, donc seul le terminal est accessible. Après plusieurs essais, nous ne parvenons pas à connecter le pi à un réseau wifi connecté à internet (même en utilisant un simple point d'accès android).  
On repasse donc finalement sur du ssh, on télécharge donc le code source de python sous forme d'archive, et on le téléverse vers le pi. On build/installe python à partir du code source : `./configure && make && make test`.  

### Partie 1 
Nous écrivons pour l'instant un programe python qui se contente de récupérer une valeur depuis les capteurs. Aucun problème à ce niveau, on passe alors à un fonctionnement où on récupère toutes les valeurs possibles périodement, en prenant soin de rendre le code modulaire pour faciliter les futures modifications. 

```py
#Il suffit d'itérer sur cet objet et appeler les lambdas à chaque fos 
simpleGetters = {
    "humidity": lambda sense : sense.get_humidity(),
    "tempFromHumid": lambda sense : sense.get_temperature_from_humidity(),
    "tempFromPres" : lambda sense : sense.get_temperature_from_pressure(),
    "pressure": lambda sense : sense.get_pressure()
}
```

Les capteurs IMU posent quelques difficultés d'utilisations : il faut les activer et désactiver manuellement ; en exclusion mutuelle. 
Même en suivant correctement ce fonctionnement, on constate un problème : leurs valeurs semblent cohérentes au lancement du programme, puis les valeurs suivantes ne correspondent plus à la réalité. Nous décidons d'ignorer ces capteurs là.  


### Partie 2

Nous testons également la fonctionnalité d'affichage de texte sur la matrice de LED, avec un programe qui affiche périodiquement toutes les valeurs données par ses capteurs sur la matrice. Cela fonctionne (voir code commenté dans notre main.py), mais nous décidons d'implémenter une visualisation plus avancée (et réactive). Celle-ci découpe la matrice en 4 bandes, dédiées aux 4 valeurs que nous mesurons (pression, humidité, température calculée à partir de l'humidité/de la pression), et les remplit plus ou moins en fonction de la valeur. 