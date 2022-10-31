#! /bin/bash
wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo

rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

yum -y upgrade  

amazon-linux-extras install -y java-openjdk11

yum install -y jenkins

systemctl daemon-reload

systemctl enable jenkins

systemctl start jenkins