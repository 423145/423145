# Install a package
sudo apt install package_name

# Upgrade a package
sudo apt upgrade package_name

# Remove a package
sudo apt remove package_name

# Remove a package along with its config files
sudo apt purge package_name

# Update the package list
sudo apt update

# Upgrade all installed packages
sudo apt upgrade

# Show information about a package
apt show package_name

# List the first 10 installed packages
dpkg --get-selections | grep -v deinstall | head -n 10

# Install a .deb package
sudo dpkg -i /path/to/package.deb

# Check if a package is installed correctly
dpkg -l | grep package_name

# List all installed packages
dpkg --get-selections | grep -v deinstall

# Install an RPM package (convert to .deb first)
sudo apt install alien
sudo alien -k package_name.rpm
sudo dpkg -i package_name.deb

# Check if the RPM package is installed correctly
dpkg -l | grep package_name
