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
##### MASTER-INSTALLER ##### KALI LINUX OS ##### BY: MATT FERLAINO ##### PENETRATION SINCE '17 #####
####################################################################################################

# Ensure we are being ran as root
if [ $(id -u) -ne 0 ]; then
	echo "-------------------------------"
	echo "This script must be ran as root"
	echo "-------------------------------"
	exit 1
fi

# Download/Install Tor Software
echo "---------------"
echo "Downloading Tor"
echo "---------------"
apt-get install -y tor

# Download/Install SSH
echo "--------------"
echo "Installing SSH"
echo "--------------"
apt-get install -y openssh-server
update-rc.d -f ssh remove
update-rc.d -f ssh defaults

# Make a new directory
ech "-----------------"
echo "Making directory"
echo "----------------"
cd /etc/ssh/
mkdir insecure_old
mv ssh_host* insecure_old
dpkg-reconfigure openssh-server

echo "--------------------------------------------"
echo "Change 'PermitRootLogin without-pasword' to:"
echo "'PermitRootLogin yes"
echo "--------------------------------------------"

# Generate new keys
nano /etc/ssh/sshd_config

# Restart the service
echo "----------------------"
echo "Restarting the service"
echo "----------------------"
sudo service ssh restart
update-rc.d -f ssh enable 2 3 4 5
sudo service ssh status

# Move to the desktop directory
cd Desktop

# Clone the url
echo "-----------------------"
echo "Dowloading the software"
echo "-----------------------"
git clone https://github.com/Und3rf10w/kali-anonsurf

# Move into the file
cd kali-anonsurf

# Ensure it has the proper premissions
echo "--------------------"
echo "Ensuring Permissions"
echo "--------------------"
chmod 777 installer.sh

# Run the installer
echo "-----------------------"
echo "Installing the software"
echo "-----------------------"
./installer.sh run

# Run AnonSurf
echo "-------------------------"
echo "Anonsurf Install Complete"
echo "-------------------------"
anonsurf start

# Install Komodo Edit
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