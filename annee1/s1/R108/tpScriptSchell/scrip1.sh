# 4 utilisateur
# 2 groupe
#
# user1 dans le groupe 1
# user2 et 4 dans le groupe1 et 2
# user3 dans le groupe2
#
# Etape
# 1/demander à l'utilisateur de se connecter à sa session (!! si user dans plusieur groupe lui demander dans  quel groupe il veut travailler )
# => on ne demande pas son nom mais on utilise $USER et $HOME --> recuperation du nom du user et son docier "home/user1"
# => script va automatiquement positionner le repertoir en fct du rep de l'utilisateur
#
# ex : ouvrir une session utilisateur : su - <nom_utilisateur>

$USER = 
echo "Vous voulez travailler en tant qu'utilisateur taper U et temps que groupe taper G"
read = choix
if $CHOIX -eq U then
	cd /home/$USER
else
	if [$USER == "user2"] || [$USER == "user4"] then
		echo "Vous faites partie des deux groupes, donnez le numéro du groupe dans lequel vous voulez travailler?"
		read reponse
		if $reponse == 1 then
			cd /home/groupe1
		else
			cd /home/groupe2
		fi
	elif $USER == "user1" then
		cd /home/groupe1
	else
		cd /home/groupe2
	fi
fi

