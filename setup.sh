
# updating the current system
sudo apt-get update

# installing dosbox
sudo apt-get install dosbox

# creating repository
sudo mkdir -p ~/nasm-lab

# moving files to nasm-lab
sudo cp -r * ~/nasm-lab

# adding automatic mounting in dosbox configuration file
dosbox &
sleep 4s
killall dosbox
dir="$HOME/nasm-lab/"
sudo sed "/autoexec/ a mount c $dir\nC:" ~/.dosbox/dosbox-0.74.conf |sudo tee -a ~/.dosbox/dosbox-0.74.conf

echo "################SETUPT FINISHED####################"
echo "PLEASE TAKE A NOTE OF WORKING DIRECTROY WHERE YOU WILL BE DOING YOUR LABS"
echo "working Directory:$dir"
