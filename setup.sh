
# updating the current system
sudo apt-get update
# installing dosbox
sudo apt-get install dosbox

# creating repository
sudo mkdir -p ~/nasm-lab

# moving files to nasm-lab

sudo cp -r * ~/nasm-lab

# adding automatic mounting in dosbox configuration file
dosbox
dir="$HOME/nasm-lab/"
sed "/[autoexec]/ a mount c $dir\nC:" ~/.dosbox/dosbox-0.74.conf
