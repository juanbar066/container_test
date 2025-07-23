FROM centos:latest
MAINTAINER juanbar066@gmail.com
RUN yum --assumeyes update && \
yum --assumeyes upgrade && \
touch ssh_script.sh && \
chmod +x ssh_script.sh && \
cat > ssh_script.sh <<EOF
"#!/usr/bin/bash"
number=1
while [[ $number -eq 1 ]]; do
read -p "Enter the IP address of the client you wish to SSH into: " ip
read -p "Enter your username: " user
ssh $user@$ip ;
done
EOF
ENNTRYPOINT ["./ssh_script.sh"]

 

