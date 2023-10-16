## Design
Le code VHDL de l'entité est fourni dans l'archive. 

La logique de la FIFO a été implémentée au moyen de 5 process séparés, gérant respectivement :
- Le bus de sortie Q (DO dans le code)
- Les "flags" (signaux en sortie) EMPTY, MID et FULL
- L'écriture dans les registres.  

De cette façon, aucun signal n'est affecté par plus d'un process, ce qui permet déviter des problèmes d'affectation simultanée à un signal.

## Simulation
Voici la waveform pour les signaux d'entrée et de sortie otenus après simulation comportementale, contrôlée par le code VHDL de simulation fourni (`test_fifo.0.vhd`). 

![Image manquante](img/Screenshot_2023-03-20_18-48-25.png)

## Synthèse
La synthèse du code donne initialement les résultats suivants en termes de primitive et de CLBs.   
(extraits du rapport Utilisation - Synth Design fourni par Vivado après synthèse)
```
1. Slice Logic
--------------

+----------------------------+------+-------+------------+-----------+-------+
|          Site Type         | Used | Fixed | Prohibited | Available | Util% |
+----------------------------+------+-------+------------+-----------+-------+
| Slice LUTs*                |   41 |     0 |          0 |     53200 |  0.08 |
|   LUT as Logic             |   17 |     0 |          0 |     53200 |  0.03 |
|   LUT as Memory            |   24 |     0 |          0 |     17400 |  0.14 |
|     LUT as Distributed RAM |   24 |     0 |            |           |       |
|     LUT as Shift Register  |    0 |     0 |            |           |       |
| Slice Registers            |   41 |     0 |          0 |    106400 |  0.04 |
|   Register as Flip Flop    |   41 |     0 |          0 |    106400 |  0.04 |
|   Register as Latch        |    0 |     0 |          0 |    106400 |  0.00 |
| F7 Muxes                   |    0 |     0 |          0 |     26600 |  0.00 |
| F8 Muxes                   |    0 |     0 |          0 |     13300 |  0.00 |
+----------------------------+------+-------+------------+-----------+-------+

...


2. Memory
---------

+----------------+------+-------+------------+-----------+-------+
|    Site Type   | Used | Fixed | Prohibited | Available | Util% |
+----------------+------+-------+------------+-----------+-------+
| Block RAM Tile |    0 |     0 |          0 |       140 |  0.00 |
|   RAMB36/FIFO* |    0 |     0 |          0 |       140 |  0.00 |
|   RAMB18       |    0 |     0 |          0 |       280 |  0.00 |
+----------------+------+-------+------------+-----------+-------+
* Note: Each Block RAM Tile only has one FIFO logic available and therefore can accommodate only one FIFO36E1 or one FIFO18E1. However, if a FIFO18E1 occupies a Block RAM Tile, that tile can still accommodate a RAMB18E1

...

7. Primitives
-------------

+----------+------+---------------------+
| Ref Name | Used | Functional Category |
+----------+------+---------------------+
| FDRE     |   41 |        Flop & Latch |
| IBUF     |   36 |                  IO |
| OBUF     |   35 |                  IO |
| RAMD32   |   34 |  Distributed Memory |
| RAMS32   |   10 |  Distributed Memory |
| LUT6     |    5 |                 LUT |
| LUT5     |    4 |                 LUT |
| LUT4     |    4 |                 LUT |
| LUT3     |    2 |                 LUT |
| LUT2     |    2 |                 LUT |
| LUT1     |    2 |                 LUT |
| BUFG     |    1 |               Clock |
+----------+------+---------------------+
```

Le fichier complet, ainsi que le rapport de synthèse, sont fournis dans l'archive, dossier "annexe/1".

On remarque qu'aucune BRAM n'est instanciée. Pour remédier à cela, j'ai essayé de retirer les affectations à l'état Haute Impédance (Z) des signaux de sortie (qui empêche, au moins partiellement, l'instanciation de BRAM), mais sans succès  : la seule différence est l'utilisation d'une LUT de moins. 

(extrait du rapport d'utilisation suite à la modif : )  
```

1. Slice Logic
--------------

+----------------------------+------+-------+------------+-----------+-------+
|          Site Type         | Used | Fixed | Prohibited | Available | Util% |
+----------------------------+------+-------+------------+-----------+-------+
| Slice LUTs*                |   41 |     0 |          0 |     53200 |  0.08 |
|   LUT as Logic             |   17 |     0 |          0 |     53200 |  0.03 |
|   LUT as Memory            |   24 |     0 |          0 |     17400 |  0.14 |
|     LUT as Distributed RAM |   24 |     0 |            |           |       |
|     LUT as Shift Register  |    0 |     0 |            |           |       |
| Slice Registers            |   41 |     0 |          0 |    106400 |  0.04 |
|   Register as Flip Flop    |   41 |     0 |          0 |    106400 |  0.04 |
|   Register as Latch        |    0 |     0 |          0 |    106400 |  0.00 |
| F7 Muxes                   |    0 |     0 |          0 |     26600 |  0.00 |
| F8 Muxes                   |    0 |     0 |          0 |     13300 |  0.00 |
+----------------------------+------+-------+------------+-----------+-------+
* Warning! The Final LUT count, after physical optimizations and full implementation, is typically lower. Run opt_design after synthesis, if not already completed, for a more realistic count.

...



2. Memory
---------

+----------------+------+-------+------------+-----------+-------+
|    Site Type   | Used | Fixed | Prohibited | Available | Util% |
+----------------+------+-------+------------+-----------+-------+
| Block RAM Tile |    0 |     0 |          0 |       140 |  0.00 |
|   RAMB36/FIFO* |    0 |     0 |          0 |       140 |  0.00 |
|   RAMB18       |    0 |     0 |          0 |       280 |  0.00 |
+----------------+------+-------+------------+-----------+-------+
* Note: Each Block RAM Tile only has one FIFO logic available and therefore can accommodate only one FIFO36E1 or one FIFO18E1. However, if a FIFO18E1 occupies a Block RAM Tile, that tile can still accommodate a RAMB18E1


...


7. Primitives
-------------

+----------+------+---------------------+
| Ref Name | Used | Functional Category |
+----------+------+---------------------+
| FDRE     |   41 |        Flop & Latch |
| IBUF     |   36 |                  IO |
| OBUF     |   35 |                  IO |
| RAMD32   |   34 |  Distributed Memory |
| RAMS32   |   10 |  Distributed Memory |
| LUT6     |    5 |                 LUT |
| LUT5     |    4 |                 LUT |
| LUT4     |    4 |                 LUT |
| LUT3     |    2 |                 LUT |
| LUT2     |    2 |                 LUT |
| LUT1     |    2 |                 LUT |
| BUFG     |    1 |               Clock |
+----------+------+---------------------+

```


## Timing
Une synthèse avec contrainte de timing a également été effectuée, avec une clock de 125 MHz. Le timing summary qui en résulte est le suivant (extrait) : 

![](img/Screenshot_2023-03-20_19-05-38.png)  

![](img/Screenshot_2023-03-20_19-04-59.png)  

On remarque un slack bien positif, la clock pourrait techniquement être accélérée.

## Difficultés rencontrées  
La principale difficulté, au sens où elle n'a pas pu être surmontée, a été pour l'instanciation de la BRAM.  

A part ça, j'ai passé beaucoup de temps sur la logique de la FIFO elle-même : le VHDL peut se montrer assez complexe à débuguer étant donné la difficulté à obtenir des informations sur le déroulement interne des processes (c'est à dire "faire des prints"), et j'ai perdu un certain temps à essayer de simplement comprendre pourquoi mes flags empty/mid/full ne prenaient pas la bonne valeur. 

Vivado lui-même a été une difficulté en soi : certains comportements assez ésotériques du logiciel m'ont empêché d'avancer à plusieurs reprises. 