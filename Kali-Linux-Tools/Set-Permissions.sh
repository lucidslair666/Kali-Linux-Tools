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
##### SET PERMISSIONS ##### KALI LINUX OS ##### BY: MATT FERLAINO ##### PENETRATION SINCE '17 ######
####################################################################################################

# Ensure we are being ran as root
if [ $(id -u) -ne 0 ]; then
	echo "-------------------------------"
	echo "This script must be ran as root"
	echo "-------------------------------"
	exit 1
fi

# Setting Permissions/Ownership
echo "-----------------------------"
echo "Setting permissions/ownership"
echo "-----------------------------"
chown root -R /root/Desktop/Kali-Linux-Tools
chmod 777 -R /root/Desktop/Kali-Linux-Tools

# Exit
echo "----------------------------"
echo "Fernwood.Penetration.Testing"
echo "----------------------------"
