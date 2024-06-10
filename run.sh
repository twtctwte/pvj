#服务器运行脚本
#需提前安装配置git
#git config --local user.email "linuxmf1211@qq.com" # 替换为您的 GitHub 邮箱地址
#git config --local user.name "twtctwte" # 替换为您的 GitHub 用户名
#ssh-keygen -t rsa -C "这里换上你的邮箱" #配置sshkey
mkdir -p "wallpapers"
cd wallpapers
wget -q -O "$(date +'%Y%m%d%h%I%s').jpg" "https://pix.tawertwtc.xyz/api/random?format=image"
cd
git add wallpapers/*
git commit -m "添加Pixiv壁纸 $(date +'%Y/%m/%d')"
git push origin main
cd
rm  -r  wallpapers

