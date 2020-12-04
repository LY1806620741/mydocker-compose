# 说明
本镜像使用centos8为基础镜像，supervisor为主进程,并以admin/admin开放9001管理端口
# docker启动
构建镜像`docker build -t supervisord supervisordbuild`

后台运行镜像`docker run -d --name supervisord -p 9001:9001 supervisord`

使用admin/admin访问9001管理端口获取运行状态

进入容器命令行修改实例`docker exec -it supervisord bash`

操作后修改`vi /etc/supervisord.conf`

重启supervisord`docker supervisord restart`
# docker-compose 启动
启动容器`docker-compose up`

进入容器`docker-compose exec supervisord bash`

操作后修改`vi /etc/supervisord.conf`

重启supervisord`docker-compose restart`
# 其他
自行修改dockerfile
