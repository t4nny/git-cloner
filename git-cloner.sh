#!/bin/bash



 	if [[ $EUID != 0 ]]; then
      		printf ""$USER" Are Your Drunk? I need root privileges for this.\n"
     		 exit 0
    	fi



if command -v git > /dev/null 2>&1 && command -v curl > /dev/null 2>&1 && command -v banner > /dev/null 2>&1; then
    
    
    
        banner git.cloner 

	printf "\n"
	printf "\e[1;93m       .:.:.\e[0m\e[1;77m Tool coded by:  t4nny \e[0m\e[1;93m.:.:.\e[0m\n"
	printf "\n"
	printf "  \e[101m\e[1;77m:: Disclaimer: Developers assume no liability and are not    ::\e[0m\n"
	printf "  \e[101m\e[1;77m:: responsible for any misuse or damage caused by this tool ::\e[0m\n"
	printf "\n"
	printf "Copying This Code Without Credits Will Open The Hell Ports For You and scratch your fireball too -_- \n\n" 
	
	
	read -p "Enter Github Username" uname
	
	for repo in `curl -s https://api.github.com/users/$uname/repos?per_page=1000 |grep git_url |awk '{print $2}'| sed 's/"\(.*\)",/\1/'`;do
	git clone $repo;
	done;
         
    
else

	printf "\e[1;92m[\e[0m*\e[1;92m] Installing Dependencies...\n"
	sudo apt install git > /dev/null 2>&1 &
	sleep 5
	sudo apt install curl > /dev/null 2>&1 &
	sleep 5
	sudo apt install sysvbanner > /dev/null 2>&1 &
	sudo ./clone.sh
fi
