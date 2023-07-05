# Nginx 安装

```
sudo yum update
sudo yum install nginx
sudo systemctl start nginx
sudo systemctl status nginx
```

# 代理转发
```
location / {
    proxy_pass http://localhost:8081;
    proxy_set_header Host $host;
    proxy_set_header X-Real-IP $remote_addr;
    proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
    proxy_set_header X-Forwarded-Proto $scheme;
    proxy_set_header Connection $http_connection;
    proxy_set_header Upgrade $http_upgrade;
    proxy_set_header X-NginX-Proxy true;
    proxy_set_header X-Request-ID $request_id;
    proxy_set_header X-Request-Start $msec;
}

```

### 主机启动日志
cat /var/log/messages


### nginx 支持PHP
```
yum install php php-fpm
vim /etc/php-fpm.d/www.conf
listen = 127.0.0.1:9000
启动PHP-FPM服务：
sudo systemctl start php-fpm
还可以将其设置为开机启动：
systemctl enable php-fpm

检查mbstring扩展是否已安装：运行以下命令查看系统上是否安装了mbstring扩展：
yum install php-mbstring
```
```
location ~ \.php$ {
	    fastcgi_pass   127.0.0.1:9000;
	    fastcgi_index  index.php;
	    fastcgi_param  SCRIPT_FILENAME  $document_root$fastcgi_script_name;
	    include        fastcgi_params;
	}
```


### 开机自启动
nginx-start.sh 已上传
```
chkconfig --add nginx-start.sh
chkconfig nginx-start.sh on
```
