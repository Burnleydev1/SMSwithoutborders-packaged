#!/bin/bash


# fetch submodules
# git submodule update --init --recursive

# mkdir at ~ and move files to there
mkdir -p $HOME/smswithoutborders/

# checks if the pm2 package installed on the system
npm list -g pm2 || \
	npm -g install pm2

# guided installation
# installing a cloud server (you cannot run Deku hardware manually)
ins_opt_1='Starting on local gateway [Deku, Router]'
ins_opt_2='Starting on remote gateway [Twilio, Router, Cloud APIs]'
echo -e " \
	[1] - $ins_opt_1\n \
	[2] - $ins_opt_2"
read -p '(enter either 1 or 2 from above)>> ' ins_option
clear

if [ $ins_option == 1 ]; then
	echo "[+]| $ins_opt_1"
elif [ $ins_option == 2 ]; then
	echo "[+]| $ins_opt_2"
fi

# read -n 1 -s -r -p "Press any key when ready... vim loading..."
# installing a local gateway (you can run Deku manually)
