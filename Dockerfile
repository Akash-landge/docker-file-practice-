FROM ubuntu:20.04
RUN apt update && apt install -y nginx unzip wget 
WORKDIR /tmp 
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page296/browny.zip
RUN unzip browny.zip -d browny
RUN rm /var/www/html/* 
RUN mv ./browny/* /var/www/html/
EXPOSE 81
CMD ["nginx", "-g", "daemon off;"]
