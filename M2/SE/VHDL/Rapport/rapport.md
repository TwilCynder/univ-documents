On pense bien à changer les valeurs génériques dans le TCL avant la simuation post-synthèse 

On remarque un changement du nobre de LUT si on change la pwm freq

Il faudrait passer le RST en "reset à 1"

Pour la synthèse, le slack et tout c'est basé sur le délai dans les portes mais sans délai dans les connexions  

pour le constraint file avec IP, j'ai mis le même que précédemment, aucune idée de si c'est bon

Trouver comment afficher le diagramme page 56 du sujet  

j'ai du corriger le #include en PWM_IP.h, et globalements tous les myAXIpwm en PWM_IP
