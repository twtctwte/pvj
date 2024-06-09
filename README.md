# 爬取 pixiv 图片
利用 Github Actions，每日爬取 pixiv 图片，存储到 wallpapers 文件夹。
## 运行方式
1. 每天固定时间运行，Cron表达式 (UTC时间)。
2. 监听 .github 文件夹的修改。
3. 手动触发工作流程。

## 需要自定义的地方
1. \- cron: '0 16 * * *' # Cron表达式。
2. \- 创建 ssh-key 仓库变量，账号放公钥，仓库变量放私钥。# Github 需要 openssh 格式，长度2048。
3. \- name: 提交并推送更改 处 "Your-email@example.com" # 替换为您的 GitHub 邮箱地址。
4. \- name: 提交并推送更改 处 "Your-GitHubUsername" # 替换为您的 GitHub 用户名。
5. \- name: 提交并推送更改 处 git push origin main # 假设主分支为 main，请根据实际情况替换为您的主分支名称。

## 在线小工具
**网络收集，不保证工具的安全性，介意误用。**

[Cron 在线生成](https://cron.help)  
[OpenSSH-KEY 在线生成](https://uutool.cn/rsa-generate/)
