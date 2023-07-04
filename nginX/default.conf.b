upstream blog_servers {
        server a3blog-1:80;
        server a3blog-2:80;
        server a3blog-3:80;
}

server {
        listen 80;

    location / {
        proxy_pass http://blog_servers;
    }
}