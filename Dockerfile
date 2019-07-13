FROM ubuntu
RUN apt-get update
RUN apt-get install -y python
RUN echo 1.0 >> /etc/version && apt-get install -y git \
	&& apt-get install -y iputils-ping
RUN mkdir /datos
WORKDIR /datos
RUN touch f1.txt

##COPY##
COPY index.html .
COPY app.log /datos

##ENV##
#ENV dir=/data dir1=/data1
#RUN mkdir $dir && mkdir $dir1

##EXPOSE##
RUN apt-get install -y apache2
EXPOSE 80

##ENTRYPOINT##
ENTRYPOINT ["/bin/bash"]
