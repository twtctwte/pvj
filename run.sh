#服务器运行脚本
#需提前安装配置git
#git config --local user.email "linuxmf1211@qq.com" # 替换为您的 GitHub 邮箱地址
#git config --local user.name "twtctwte" # 替换为您的 GitHub 用户名
mkdir -p "wallpapers"
cd wallpapers
wget -q -O "$(date +'%Y%m%d%h%I%s').jpg" "https://pix.tawertwtc.xyz/api/random?format=image"
cd
git add wallpapers/*
git commit -m "添加Pixiv壁纸 $(date +'%Y/%m/%d')"
git push origin main
cd
#rm  -r  wallpapers #上传图片至github后是否删除服务器图片

