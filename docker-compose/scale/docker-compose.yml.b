name: hooniegit
services:
  blog:
    build: ../../httpd
    deploy:
      mode: replicated
      replicas: 3
    ports:
      - 80

  load_balancer:
    build: ../../nginx
    ports:
      - 9999:80
    depends_on:
      - blog