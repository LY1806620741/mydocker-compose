# mydocker-compose
我的docker-compose库

# Docker 清理
    docker image prune -af  //删除未使用镜像
    docker rmi $(docker images | grep "^<none>" | awk '{print $3}')//删除所有None的镜像
    docker rmi $(docker images -q)//删除所有镜像
    docker rm $(docker ps -a -q)  //删除所有实例
    docker system df//查看空间使用
    docker system prune -af//删除关闭的容器、无用的数据卷和网络和镜像

# Docker 不使用缓存build
docker build --no-cache
docker-compose build --no-cache
