## Mode 1
On part sur les taches périodiques suivantes :  

Tache | Période | Capacité 
-|-|-
1 | 8 | 3
2 | 16 | 2
3 | 8 | 1
4 | 10 | 1

![Image](./mode%201-2%20simul%20EDF.png)
![Image](./mode%201-2%20simul%20RM.png)

## Mode 2
On part sur les taches apériodiques suivantes : 

Tache | Arrivée | Capacité 
-|-|-
1 | 10 | 10
2 | 50 | 5
3 | 50 | 10
4 | 100 | 15

![Image](./part%202%20mode%202%20EDF%20simul.png)

On va utiliser un serveur à scrutation. On veut lui donner le + de temps possible sans dépasser un taux de 1.   
Le taux actuel est la somme des Ci / Pi avec i toutes les taches périodiques. Un serveur avec une période de PPCM(Ti...) et une capacité de U / PPCM, assure une utilisation optimale du temps.  

3/8 + 2/16 + 1/8 + 1/10 = 22/80   

![Image](./part%202%20mode%202%20scrutation%20simul.png)
![Image](./part%202%20mode%202%20sporadic%20simul.png)