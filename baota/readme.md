���������׼�����ڣ����ݼ�ֱͷ�ۣ��տ�ʼҪ��ʹ��docker���û�����Ǩ�ƾ�û��ô�鷳�ˣ���������Ҳ�ǵ�ʱdockerû�л�������ԭ��
yum update
yum install docker
yum install docker-compose
systemctl enable docker
systemctl start docker
cd ��ĿĿ¼
docker-compose up -d
docker-compose logs�鿴����
����ʹ��
docker run -tid --name baota --net=host --privileged=true --restart always -v ~/wwwroot:/www/wwwroot pch18/baota:clear

PS:����汾��install.sh�ӱ����Լ��ķ������ϻ�ȡ��ʮ��֮���������廪Դ��һ���ֵİ�װҲ�Ǻ������⣬���Ա���һ���汾���Լ�����������