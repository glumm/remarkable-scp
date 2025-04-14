#!/bin/bash
#Author: Jarrett Minot

#zenity --file-selection --tile "File to Transfer" --multiple --file-filter='*.mm *.png *.page *.sh *.txt'

# Response=$(zenity --file-selection --multiple); echo $Response

valid_ip() {
  local ip=$1
  local IFS=.; local -a a=($ip) 
  #regex to validate pattern
    [[ $ip =~ ^[0-9]+(\.[0-9]+){3}$ ]] || return 1
  #validating octets 
  local quad
  for quad in {0..3}; do
    [[ "${a[$quad]}" -gt 255 ]] && return 1
  done
  return 0
}



ip=$(zenity --entry --text='Please Enter the IP address of your Remarkable Tablet: '); 

if valid_ip "$ip"; then
  zenity --info --width 300 --text "IP entered correctly"; 
else 
  zenity --error --width 300 --text "IP does not follow standard convention. Please try again"; 
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
