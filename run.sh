#服务器运行脚本
#需提前安装配置git
mkdir -p "wallpapers"
cd wallpapers
wget -q -O "$(date +'%Y%m%d%h%I%s').jpg" "https://pix.tawertwtc.xyz/api/random?format=image"
cd
git add wallpapers/*
git commit -m "添加Pixiv壁纸 $(date +'%Y/%m/%d')"
git push origin main
