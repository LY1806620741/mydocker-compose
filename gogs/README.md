# gogs
启动docker-compose后访问3000端口主页，配置使用sqlite即可，轻量好用，data会持久化在gogs/data下

如果使用ssh进行连接不想输入端口,例如:```git clone ssh://git@localhost:10022/jieshao/test.git```
可以新建文件```~/.ssh/config```(不是ssh_config，这个是sshd服务的，config是ssh命令读取的)
内容如下，新建别名
```
Host localhost
   HostName localhost
   Port 10022
```
然后按照gogs中ssh地址clone就行了```git clone git@localhost:jieshao/reacttest.git```
别忘了上锁(加公钥),也可以http