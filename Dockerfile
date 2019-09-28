FROM centos
MAINTAINER satish736
#WORKDIR /opt/
RUN mkdir /opt/tomcat9
WORKDIR /opt/tomcat9
COPY ./* /opt/tomcat9/
#RUN yum install java -y
RUN yum install -y java-1.8.0-openjdk.x86_64 --nogpgcheck
ENV PATH=$PATH:/opt/tomcat9/bin
#ENTRYPOINT [""]
EXPOSE 8080
ENTRYPOINT ["catalina.sh" , "run" ]
