FROM httpd
RUN apt-get update -y
RUN apt-get install wget -y
RUN apt-get install unzip -y
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page272/revetive.zip
RUN unzip revetive.zip
RUN mv /usr/locaal/apache2/revetive/* /usr/local/apache2/htdocs/
EXPOSE 8080
CMD httpd -D ForeGround
