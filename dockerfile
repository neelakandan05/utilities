FROM centos:latest

RUN yum -y install openssh-server && \
    yum -y install git && \
    yum -y install docker
  
RUN echo "root:password" | chpasswd  
RUN useradd jenkins  
RUN echo "jenkins:jenkins" | chpasswd  
  
RUN mkdir -p /var/run/sshd  
RUN ssh-keygen -A
RUN sed -i 's|session    required     pam_loginuid.so|session    optional     pam_loginuid.so|g' /etc/pam.d/sshd  
   
EXPOSE 22  

CMD ["/usr/sbin/sshd", "-D"] 
