# 说明
jupyter python3.6 基础镜像
# 运行
1. docker-compose
后台运行
```docker-compose up -d```
查看日志获取登录token
```docker-compose logs``
浏览器访问,直接用tokenurl可以直接验证，也可以访问首页使用token修改密码，以后用密码访问
# 关于数据持久化
因为docker存在普通用户目录映射到宿主机root没有权限的问题，所以没有volume到本地文件夹
1. 可以用jupyter terminal打包再进行下载
2. 或者编辑docker-compose 持久化一个只写[wo]文件夹到本地,把需要的sudo往里面移
3. 以上两条是推荐的，其他的八仙过海，各显神通吧