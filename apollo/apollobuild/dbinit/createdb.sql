-- 添加远程登录用户
CREATE USER 'apollo'@'%' IDENTIFIED WITH mysql_native_password BY 'apollo';
GRANT ALL PRIVILEGES ON *.* TO 'apollo'@'%'