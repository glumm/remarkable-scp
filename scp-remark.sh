#!/bin/bash
#Author: Jarrett Minot

#zenity --file-selection --tile "File to Transfer" --multiple --file-filter='*.mm *.png *.page *.sh *.txt'

# Response=$(zenity --file-selection --multiple); echo $Response
validate_ip(){
  local ip=$1
  local IFS=.; 
}



ip=$(zenity --entry --text='Please Enter the IP address of your Remarkable Tablet: '); 

if []; then 
else 
fi
echo "you entered $ipaddr";

#notebooks on remarkable are stored in: /home/root/.local/share/remarkable/xochitl/ 


#zenity --file-selection --multiple;

# -------------------------------------- #
#              Resources                 #
# -------------------------------------- #
#
# https://remarkable.guide/guide/access/ssh.html#connecting-over-usb
#
# https://manpages.ubuntu.com/manpages/plucky/en/man1/zenity.1.html
#
# https://www.howtogeek.com/435020/how-to-add-a-gui-to-linux-shell-scripts/#the-file-selection-dialog-window-choosing-a-file
#
#
