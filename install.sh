#Installing Dependencies.
#....Pure Shell Based Tool.....#
clear
echo -e ""
echo -e "Installing the necessary dependencies."
sleep 2
echo -e ""
sleep 2
echo -e " Started Installing...."
echo -e ""
echo -e ""
sleep 1
apt update -y && apt upgrade -y
pkg install toilet -y && pkg install figlet -y && pkg install curl -y && pkg install wget -y
apt install termux-api python ffmpeg aria2 mpv -y
yes | pip3 install youtube-dlc 
yes | pip3 install gallery-dl
yes | pip install spotdl
yes | pip install you-get
pkg install rtorrent -y
clear
sleep 2
echo -e ""
echo -e " Necessary Packages installed... "
sleep 2
echo -e ""
echo -e "Now setting up storage and download paths."
# Path Chosen
spoiled="$HOME/bin"

[ -d "$spoiled" ] || mkdir "$spoiled"
[ -f "$spoiled/termux-url-opener" ] && rm -f "$spoiled/termux-url-0opener"

wget -P "$spoiled" --no-check-certificate "https://raw.githubusercontent.com/spoiled-ops/Termux_AllinOne-dl/master/termux-url-opener" 
chmod +x "$spoiled/termux-url-opener"
termux-fix-shebang "$spoiled/termux-url-opener"
termux-setup-storage
