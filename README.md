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

# Docker网络相关
    docker network ls //查看网络
    docker network inspect gogs_default //查看详情
    docker network disconnect gogs_default gogs//从gogs默认网络断开gogs实例
    docker network connect newnetwork gogs//gogs实例连接新网络 --ip指定ip 其他的看官网
    ​内置DNS服务器127.0.0.11,127.0.0.11的53端口的dns请求，被转发到了docker containerd进程上

# Curl查询
curl -X GET --connect-timeout 10 {url}|python -m json.tool
## 页面
### 查看jupyter的主页
https://cloud.docker.com/repository/docker/jieshao/jupyter
https://cloud.docker.com/u/jieshao/repository/docker/jieshao/jupyter
### 查看jupyter的tag页面
https://cloud.docker.com/repository/docker/jieshao/jupyter/tags

## API
### 查看jupyter详情api
https://cloud.docker.com/v2/repositories/jieshao/jupyter/
~~https://cloud.docker.com/api/nautilus/v1/repositories/summaries/jieshao/jupyter/失效~~
### 查看jupyter的tags api
https://cloud.docker.com/api/repo/v1/inspect/v2/jieshao/jupyter/tags/list/
https://cloud.docker.com/v2/repositories/jieshao/jupyter/tags/?page_size=25
### 搜寻docker
https://index.docker.io/v1/search?q=jieshao&n=25