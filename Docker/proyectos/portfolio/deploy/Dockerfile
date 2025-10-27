#partimos de una imagen base de ubuntu
FROM ubuntu 
RUN apt update && apt install -yq --no-install-recommends \
     apache2 \
     curl \
     nano \
     net-tools iputils-ping
RUN useradd -rm -d /home/morgado -s /bin/bash morgado
# para crear el password usamos el comando chpasswd
RUN echo "morgado:1234" | chpasswd

EXPOSE 80
CMD apachectl -DFOREGROUND
