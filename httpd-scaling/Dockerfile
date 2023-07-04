FROM httpd:2.4.57

RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "vim"]

RUN ["apt-get", "install", "-y",  "git"]
RUN ["git", "clone", "https://github.com/hooniegit/hooniegit.github.io.git", "/usr/local/apache2/app/blog/hooniegit.github.io"]

RUN ["apt-get", "install", "-y", "cron"]
COPY ["pull.sh", "/usr/local/apache2/app/blog/"]
COPY ["blog-pull-cronjob", "/etc/cron.d/blog-pull-cronjob"]
RUN crontab /etc/cron.d/blog-pull-cronjob

RUN sed -i 's#DocumentRoot "/usr/local/apache2/htdocs"#DocumentRoot "/usr/local/apache2/app/blog/hooniegit.github.io"#g' /usr/local/apache2/conf/httpd.conf
RUN sed -i 's#<Directory "/usr/local/apache2/htdocs">#<Directory "/usr/local/apache2/app/blog/hooniegit.github.io">#g' /usr/local/apache2/conf/httpd.conf

CMD ["--cpus=2", "--memory=2g", "/bin/sh", "-c", "httpd-foreground"]
