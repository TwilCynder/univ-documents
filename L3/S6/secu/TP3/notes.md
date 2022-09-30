ptrace : analyse/modif de mémoire d'un autre process

Clef : entiers de 128-2048 bits facilement repérables dans une mémoire

## OpenSSL

### AES
AES-xxx : xxx bits

créer une clef aes : `openssl rand --hex --out name.bin n_octets`
  
**chiffrer avec AES**  
En sépcifiant la clé :  `openssl  aes-128-cbc -K "key" -iv ""  -salt -in input_file -out output_file`  
clef dérivée : `openssl  aes-128-cbc -pass file:name.bin  -salt -in input_file -out output_file`   
ajouter `-iter x` ?  

Pour **déchiffrer**, pareil avec -d

