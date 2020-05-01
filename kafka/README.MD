# 说明
kafka docker 使用centos8作为基础镜像,装载java环境,使用superisor管理zookeepr和kafka的dev实验环境，若需精简容器自行修改

# 启动
在本目录下`docker-compose up -d`启动容器

# 其他
进入容器执行命令`docker-compose exec kafka bash`附上[kafka官方文档](http://kafka.apache.org/quickstart)

浏览器访问端口9001进入web进程管理页，用户密码都是admin,根据情况修改关闭web页./kafkabuild/supervisord.conf(该目录文件改动后要`docker-compose build`更新生成image),或者关闭端口docker-compose.yaml(该文件在`docker-compose up`命令生效)

# 已知问题
如果遇到`kafka启动：Native memory allocation (mmap) failed to map 1073741824 bytes for committing reserved memory`,这是由于你的docker宿主机内存不足1G，而kafka启动参数默认`-Xmx1G -Xms1G`引起,修改dockerfile或者在容器启动的状态`docker-compose exec kafka bash`进入容器`vi /usr/local/kafka_2.13-2.5.0/bin/kafka-server-start.sh`修改为小一点的内存即可`export KAFKA_HEAP_OPTS="-Xmx256M -Xms128M"`