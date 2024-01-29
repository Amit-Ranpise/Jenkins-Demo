FROM ubuntu 
RUN apt update 
RUN apt install –y apache2 
RUN apt install –y apache2-utils 
RUN apt clean 
WORKDIR /var/www/html
copy *.html /var/www/html/index.html
EXPOSE 80
CMD [“apache2ctl”, “-D”, “FOREGROUND”]
