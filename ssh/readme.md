# 说明
在centos中文快速镜像基础上增加了ssh服务
需要修改dockerfile使用公钥登录，或者设置root密码使用密码登录
修改方式可以直接改dockerfile也可以from这个镜像再做自己的修改,这种方式的修改具体例子在仓库的remote_dev目录下