最近服务器准备到期，备份简直头疼，刚开始要是使用docker配置环境，迁移就没那么麻烦了，不过可能也是当时docker没有火起来的原因
yum update
yum install docker
yum install docker-compose
systemctl enable docker
systemctl start docker
cd 项目目录
docker-compose up -d
docker-compose logs查看密码
或者使用
docker run -tid --name baota --net=host --privileged=true --restart always -v ~/wwwroot:/www/wwwroot pch18/baota:clear

PS:这个版本的install.sh从宝塔自己的服务器上获取，十分之卡，换了清华源做一部分的安装也是很有问题，索性保存一个版本，自己构建环境了