#服务器运行脚本
#需提前安装配置git
mkdir -p "wallpapers"
cd wallpapers
wget -q -O "$FILENAME" "https://pix.tawertwtc.xyz/api/random?format=image"
cd
