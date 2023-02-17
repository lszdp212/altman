FROM centos:7
RUN yum -y update
RUN yum install -y wget
RUN wget https://gitee.com/hdbjlizhe/autMan/releases/download/1.0.0/autMan_amd64.tar.gz
RUN tar -zxvf autMan_amd64.tar.gz
RUN chmod 777 autMan
EXPOSE 8080
ENTRYPOINT ["./autMan","-t"]

