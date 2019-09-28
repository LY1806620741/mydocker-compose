# 配合docker gogs
如果使用docker gogs，那么要设置在同一个子网络里,ping 服务名就行，ping gogs能ping通，这时候直接git clone git@gogs:仓库即可
如果需要直接复制gogs里的url（localhost域名的）只需要定义locahost别名，安装git后```vi ~/.ssh/config```
添加
```
Host localhost
  HostName gogs
```
再git clone git@localhost:仓库即可