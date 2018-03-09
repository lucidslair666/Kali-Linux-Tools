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
##### KOMODO-INSTALLER ##### KALI LINUX OS ##### BY: MATT FERLAINO ##### PENETRATION SINCE '17 #####
####################################################################################################

# Ensure we are being ran as root
if [ $(id -u) -ne 0 ]; then
	echo "-------------------------------"
	echo "This script must be ran as root"
	echo "-------------------------------"
	exit 1
fi

# Clone git
echo "-----------"
echo "Cloning Git"
echo "-----------"
git clone https://github.com/Komodo/KomodoEdit.git

echo "----------------"
echo "Building Mozilla"
echo "----------------"
cd komodo/mozilla
python build.py configure -k 10.10
python build.py distclean all

# Exit
echo "----------------------------"
echo "Fernwood.Penetration.Testing"
echo "----------------------------"


