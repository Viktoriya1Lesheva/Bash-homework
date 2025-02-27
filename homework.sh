#!/bin/bash

function k_pop() {
	sudo useradd jenny
	sudo useradd rose
	sudo useradd lisa
	sudo useradd jisoo
	sudo groupadd blackpink
	sudo usermod -aG blackpink jenny
	sudo usermod -aG blackpink rose
	sudo usermod -aG blakpinklisa
	sudo usermod -aG blackpinkjisoo
}

function wordpress() {
	sudo yum install httpd  -y > /dev/null
	sudo systemctl start httpd
	sudo systemctl status httpd
	sudo systemctl enable httpd
	sudo dnf install wget php-mysqlnd httpd php-fpm php-mysqli mariadb105-server php-json php php-devel -y > /dev/null
	wget https://wordpress.org/latest.tar.gz
	tar -xzf latest.tar.gz
	sudo mv wordpress/* /var/www/html
	sudo rm -r /var/www/html/index.html
	sudo chown -R apache:apache /var/www/html 
	sudo chmod -R_755 /var/www/html
	sudo systemctl restart httpd

}

function calculator() {
	echo $((12+4))
	echo $((12-4))
	echo $((12*4))
	echo $((12/4))
}

function binary() {
	sudo yum install tree -y > /dev/null
	tree
	sudo yum install -y yum-utils shadow-utils
	sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
	sudo yum -y install terraform
	terraform version
}

k-pop
wordpress
calculator
binary
