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
yes | pip3 install -U youtube-dlc gallery-dl spotdl
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
spoiled="$HOME/Downloader"

[ -d "$spoiled" ] || mkdir "$spoiled"
[ -f "$spoiled/AllinOne-dl" ] && rm -f "$spoiled/AllinOne-dl"

wget -P "~/Downloader" --no-check-certificate "https://raw.githubusercontent.com/spoiled-ops/Termux_AllinOne-dl/master/AllinOne-dl" 
chmod +x "~/Downloader/AllinOne-dl"
termux-fix-shebang "$spoiled/AllinOne-dl"
termux-setup-storage
