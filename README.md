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
