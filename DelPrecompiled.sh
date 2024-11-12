# To check if a program is installed, we can use `whereis [program(s)]`
whereis freerdp remmina

# When FreeRDP is installed from the CentOS repo, use this command to remove it
sudo yum -y remove freerdp*

# When FreeRDP is installed from source code, enter the FreeRDP source code folder
#   and run the following command
cd ${HOME}/freerdp
sudo rm $(cat install_manifest.txt)

# When Remmina is installed from the CentOS repo, use this command to remove it
sudo yum -y remove remmina*

# When Remmina is installed from source code, enter the `build` folder
#   in Remmina source code folder and run the following command
cd ${HOME}/remmina/build
sudo make uninstall

# Finally, we need to delete the empty folders of Remmina and FreeRDP
# This needs to be run for uninstallation of either programs
sudo rmdir $(find $(whereis freerdp remmina | grep -Po "^[^:]*: \K.*$") -type d | tac)
