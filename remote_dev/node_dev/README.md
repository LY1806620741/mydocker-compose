# NodeJs的开发环境
## 信息
root密码设置为123,暴露的端口ssh1024,开发访问的8080
## 使用
后台运行docker```docker-compose up -d```
将本地公钥上传docker，输入密码123```ssh-copy-id -p 1024 root@localhost```
ssh进去```ssh -p 1024 root@localhost```
修改root密码,输入新的密码（安全考虑，这步可以省去）```passwd```
如果不想每次都输入端口，那么需要修改定义别名（～代表的是当前用户的目录，windows同理）
可以新建文件```~/.ssh/config```(不是ssh_config，这个是sshd服务的，config是ssh命令读取的)
内容如下，新建别名
```
Host localhost
   HostName localhost
   Port 1024
```
## Vscode
vscode安装remote ssh工具就可以了,开发的页面用8080端口访问