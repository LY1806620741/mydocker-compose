# mydocker-compose
我的docker-compose库

# Docker 清理
    docker image prune -af  //删除未使用镜像
    docker rmi $(docker images | grep "^<none>" | awk "{print $3}")//删除所有None的镜像
    docker rmi $(docker images -q)//删除所有镜像
    docker rm $(docker ps -a -q)  //删除所有实例
