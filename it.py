import os
paths = r'./wallpapers'  # 储存图片的文件夹路径
f = open('img.txt', 'w')
filenames = os.listdir(paths)  # 读取图片名称
for filename in filenames:
    out = filename
    f.write(out + '\n')
f.close()
