#système de choix de langue du menu
#parce que euh j'avais envie

menu_FR="Vous pouvez taper une commande Unix, ou bien : \nfin si vous souhaitez quitter l'application \nrelancer n si vous souhaitez relancer les n dernières commandes"

menu_EN="You can enter a UNIX command, or : \nfin if you wish to quit the application \nrelancer n if you wish to restart the n last commands"

function true(){
  return 0
}

function menu(){
  echo -e $menu_EN
  echo -n '$'
}

while true
do
  menu
  read command

  if [ "$command" = "fin" ]
  then
    exit 0
  fi

  echo "$ $command" >> .command_list
  echo `$command` | tee -a .command_list
done
