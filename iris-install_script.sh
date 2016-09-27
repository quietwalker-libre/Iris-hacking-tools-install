#!/bin/bash

#Author: Emanuel "quietwalker" Di Vita
#Year: 2016
#This Script Unjail your Gnu/Linux OS, installing only free softwares



#######################
##			         ##
    DEVICE=0 #it should be = 0
##			         ##
#######################

#Colori della shell
rosso="\033[1;31m"
giallo="\033[1;33m"
azzurro="\033[1;34m"
verde="\033[1;32m"
default="\e[0m"

############# Controlla se l'utente è amministratore ###################
if [ $(id -u) -ne '0' ];
	then echo -e $rosso "Are you drunk? Run me as root!!!" $default
	exit
fi 

##imposta il dispositivo di output tra monitor e /dev/null
if [ $DEVICE = 1 ]; then
	#mostra tutto l'output nel monitor
	export output_device=/dev/stdout
else
	## manda tutto in dev null
	export output_device=/dev/null
fi




echo "" 
sleep 0.1 && echo -e $azzurro "                      _____  _______     _____   ______   "                     
sleep 0.1 && echo -e "                      |_   _||_   __ \   |_   _|.' ____ \  "                     
sleep 0.1 && echo -e "                        | |    | |__) |    | |  | (___ \_| "
sleep 0.1 && echo -e "                        | |    |  __ /     | |   _.____ .  "
sleep 0.1 && echo -e "                       _| |_  _| |  \ \_  _| |_ | \____) | "
sleep 0.1 && echo -e "                      |_____||____| |___||_____| \______.' Project!"
sleep 0.1 && echo -e ""
sleep 1
echo -e $azzurro "                     This Script will install a lot of tools " 
echo -e $azzurro"                      Coded by quietwalker "
echo -e $azzurro "                     For www.irisproject.org "$default && echo ""
echo -e $giallo "                     email: quietwalker@parrotsec.org"$default
sleep 2

clear

echo -e $default 'Are You Running this script from an Iris Distro? (1=yes, 2=no)'
read scelta

if [ "$scelta" = "2" ]; then
	echo 'Adding Iris Repo to source list'
	sudo echo 'deb http://http://archive.irisproject.org/iris/ stable main' > /etc/apt/sources.list
fi

echo -e $rosso '[*] Updating Iris Repository'
echo -e $default
sudo apt-get update

echo -e $giallo '[*] Installing GPG Graphical Assistant' $default
apt-get install gpa -y -y > $output_device

echo -e $giallo "[*] Installing Audio Video Softwares..." $default
apt-get install gimp audacity cheese vlc kodi -y > $output_device

echo -e $giallo "[*] Installing Internet Softwares..." $default
apt-get install driftnet etherape ettercap icedove kismet remmina hexchat mutt wireshark ssvnc thc xhydra -y > $output_device

echo -e  $giallo "[*] Installing Office Softwares..." $default
apt-get install libreoffice  -y > $output_device

echo -e  $giallo "[*] Installing Programming tools and IDEs" $default
apt-get install gcc gpp python python3 geany codeblocks ferret ipython qtcreator -y > $output_device

echo -e  $giallo "[*] Installing System tools..." $default
apt-get install openjdk-8-jre openjdk-8-jre-headless openjdk-8-doc gparted arduino qemu bleachbit gsmartcontrol htop gdebi lynis macchanger mysql-server mysql-client apache2 -y > $output_device 


#Installazione dei tool per l'hacking
clear
sleep 0.1 && echo -e $verde "                 _   _            _    _               _____           _     "                     
sleep 0.1 && echo -e "                 | | | | __ _  ___| | _(_)_ __   __ _  |_   _|__   ___ | |___ "                     
sleep 0.1 && echo -e "                 | |_| |/ _  |/ __| |/ / | '_ \ / _  |   | |/ _ \ / _ \| / __|"
sleep 0.1 && echo -e "                 |  _  | (_| | (__|   <| | | | | (_| |   | | (_) | (_) | \__ _"
sleep 0.1 && echo -e "        ParrotOS |_| |_|\__,_|\___|_|\_\_|_| |_|\__, |   |_|\___/ \___/|_|___/ " && echo ""
sleep 0.1 && echo -e "                                            INSTALLING..." $default

echo -e $giallo '[*] Installing Most Used Tools' $default
apt-get install ipscan dff ophcrack owasp-zap spiderfoot w3af wireshark webscarab -y > $output_device

echo -e $giallo '[*] Installing Information Gathering Tools ---> DNS' $default
apt-get install dnsenum dnsmap dnsrecon dnswalk dnschef dns2tcp dnsmasq fierce -y > $output_device

echo -e $giallo '[*] Installing Information Gathering Tools ---> OSINT' $default
apt-get install theharvester metagoofil twofi -y

echo -e $giallo '[*] Installing Information Gathering Tools ---> Route' $default
apt-get install intrace netdiscover 0trace netmask traceroute traceroute6 -y > $output_device

echo -e $giallo '[*] Installing Information Gathering Tools ---> SMB' $default
apt-get install enum4linux nbtscan smbmap -y > $output_device

echo -e $giallo '[*] Installing Information Gathering Tools ---> SMTP' $default
apt-get install smtp-user-enum swaks -y > $output_device

echo -e $giallo '[*] Installing Information Gathering Tools ---> SNMP' $default
apt-get install braa onesixtyone snmpcheck -y > $output_device

echo -e $giallo '[*] Installing Information Gathering Tools ---> SSL' $default
apt-get install sslcaudit ssldump sslh sslscan sslyze tlssled -y > $output_device

echo -e $giallo '[*] Installing Information Gathering Tools ---> Active Host Identification' $default
apt-get install ipscan arping cdpsnarf miranda fping hping3 unicornscan wol-e xprobe2 ncat thc-ipv6 -y > $output_device

echo -e $giallo '[*] Installing Information Gathering Tools ---> IDS/IPS Identification' $default
apt-get install fragroute fragrouter ftest lbd -y > $output_device

echo -e $giallo '[*] Installing Information Gathering Tools ---> Top softwares' $default
apt-get install dmitry ike-scan netdiscover p0f -y > $output_device

echo -e $giallo '[*] Installing Vulnerability Assessment Tools ---> OpenVAS' $default
apt-get install openvas -y > $output_device

echo -e $giallo '[*] Installing Vulnerability Assessment Tools ---> Stress Test' $default
apt-get install dhcpig iaxflood inviteflood macof siege slowloris t50 thc-ssl-dos -y > $output_device

echo -e $giallo '[*] Installing Vulnerability Assessment Tools ---> Cisco Tools' $default
apt-get install cisco-auditing-tool cisco-global-exploiter cisco-ocs cisco-torch yersinia copy-router-config -y > $output_device

echo -e $giallo '[*] Installing Vulnerability Assessment Tools ---> Fuzzing Tools' $default
apt-get install sipmyarmyknife bed powerfuzzer sfuzz -y > $output_device

echo -e $giallo '[*] Installing Vulnerability Assessment Tools ---> VOIP Tools' $default
apt-get install voiphopper sipvicious enumiax iaxflood inviteflood protos-sip rtpbreak sctpscan sipp sipsak -y > $output_device

echo -e $giallo '[*] Installing Vulnerability Assessment Tools ---> Other Tools' $default
apt-get install golismero inurlbr tdsog -y > $output_device

echo -e $giallo '[*] Installing Web Application Tools ---> Web Crawler' $default
apt-get install wfuzz dirb dirbuster uniscan-gui cutycapt -y > $output_device

echo -e $giallo '[*] Installing Web Application Tools ---> CMS Identification' $default
apt-get install clusterd plecost joomscan wpscan blindelephant ua-tester jboss-linux jboss-win -y > $output_device

echo -e $giallo '[*] Installing Web Application Tools ---> Web Application Proxy' $default
apt-get install paros proxystrike -y > $output_device

echo -e $giallo '[*] Installing Web Application Tools ---> Web Application Vulnerability Scanner' $default
apt-get install cadaver davtest deblaze fimap jsql powerfuzzer skipfish wapiti webshag websploit xsser whatweb -y > $output_device

echo -e $giallo '[*] Installing Web Application Tools ---> Others' $default
apt-get install httrack -y > $output_device

echo -e $giallo '[*] Installing Database Analysis Tools' $default
apt-get install sqlmap hexorbase jsql mdb-export mdb-hexdump-mdb-parsecsv mdb-sql mdb-tables oscanner sqlninja sqlsus -y > $output_device

echo -e $giallo '[*] Exploiting Tools' $default
echo -e $rosso "!!! It's temporarily impossible to install exploitation tools due to license issues...we are working hard. Stay tuned" $default && echo ""

echo -e $giallo '[*] Installing Mantaining Access Tools ---> SO Backdoor' $default
apt-get install dbd maligno u3-pwn -y > $output_device

echo -e $giallo '[*] Installing Mantaining Access Tools ---> Web Backdoor' $default
apt-get install webacoo -y > $output_device

echo -e $giallo '[*] Installing Mantaining Access Tools ---> Tunnelling Tools' $default
apt-get install dns2tcp iodine proxychains proxytunnel udptunnel -y > $output_device

echo -e $giallo '[*] Installing Password Attacks Tools ---> Dictionary Attacks' $default
apt-get install cewl crunch -y > $output_device

echo -e $giallo '[*] Installing Password Attacks Tools ---> Online Attacks' $default
apt-get install  cisco-auditing-tool hydra -y > $output_device

echo -e $giallo '[*] Installing Password Attacks Tools ---> Offline Attacks' $default
apt-get install ophcrack findmyhash cmospwd fcrackzip hashid hash-identifier rainbowcrack sipcrack sucrack medusa pyrit -y > $output_device

echo -e $giallo '[*] Installing Wireless Testing Tools ---> Wireless Tools' $default
apt-get install ubertooth-util hckrf airmode bully cowpatty eapmd5pass fern-wifi-cracker wifi-honey wifiarp wifite reaver pixiewps -y > $output_device

echo -e $giallo '[*] Installing Wireless Testing Tools ---> Software Defined Radio' $default
apt-get install rfcat gnuradio -y > $output_device

echo -e $giallo '[*] Installing Wireless Testing Tools ---> Bluetooth Tools' $default
apt-get install  btscanner bluelog bluemaho blueranger bluesnarfer btscanner spooftooph -y > $output_device

echo -e $giallo '[*] Installing Wireless Testing Tools ---> Other Wireless Tools' $default
apt-get install  mdk3 wifitap -y > $output_device

echo -e $giallo '[*] Installing Sniffing and Spoofing Tools ---> Sniffing' $default
apt-get install  darkstat dnschef hexinject tcpflow sslsniff -y > $output_device

echo -e $giallo '[*] Installing Sniffing and Spoofing Tools ---> Spoofing' $default
apt-get install sslstrip  -y > $output_device

echo -e $giallo '[*] Installing Forensic Tools ---> Spoofing' $default
apt-get install bulk_extractor chkrootkit rkunter volafox scalpel photorec dc3dd ddrescue -y > $output_device

echo -e $verde 'System upgrade...'
sudo apt-get upgrade 

echo "[*] Pulizia della cache..."
apt-cache clean && apt-get autoclean && apt-get autoremove

echo -e $rosso 'You should reboot your computer now!\nAfter reboot you can use Iris as Hacking System\n Enjoy!'
