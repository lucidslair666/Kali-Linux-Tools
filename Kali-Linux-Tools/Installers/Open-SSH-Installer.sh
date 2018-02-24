####################################################################################################
##                                  FERNWOOD PENETRATION SUITE V1                                 ##
##                    ###########   ###########   ###########   ####        ##                    ##
##                    ##            ##            ##       ##   ## ##       ##                    ##
##                    ##            ##            ##       ##   ##  ##      ##                    ##
##                    ##            ##            ##       ##   ##   ##     ##                    ##
##                    #######       #######       ###########   ##    ##    ##                    ##
##                    ##            ##            ##     ##     ##     ##   ##                    ##
##                    ##            ##            ##      ##    ##      ##  ##                    ##
##                    ##            ############  ##        ##  ##        ####                    ##
##                                                                                                ##
####################################################################################################
##### OPEN SSH INSTALLER ##### KALI LINUX OS ##### BY: MATT FERLAINO ##### PENETRATION SINCE '17 ###
####################################################################################################

# Ensure we are being ran as root
if [ $(id -u) -ne 0 ]; then
	echo "-------------------------------"
	echo "This script must be ran as root"
	echo "-------------------------------"
	exit 1
fi

# Install SSH
echo "--------------"
echo "Installing SSH"
echo "--------------"
apt-get install -y openssh-server
update-rc.d -f ssh remove
update-rc.d -f ssh defaults

# Make a new directory
ech  "----------------"
echo "Making directory"
echo "----------------"
cd /etc/ssh/
mkdir insecure_old
mv ssh_host* insecure_old
dpkg-reconfigure openssh-server

# Generate new keys
echo "--------------"
echo " Changing Keys"
echo "--------------"
cp -f /root/Desktop/Kali-Linux-Tools/Installers/sshd_config /etc/ssh/sshd_config

# Restart the service
echo "----------------------"
echo "Restarting the service"
echo "----------------------"
service ssh restart
update-rc.d -f ssh enable 2 3 4 5
service ssh status

# Exit
echo "----------------------------"
echo "Fernwood.Penetration.Testing"
echo "----------------------------"
