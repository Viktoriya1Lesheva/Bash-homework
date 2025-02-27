#!/bin/bash

function k_pop() {
	sudo useradd jenny
	sudo useradd rose
	sudo useradd lisa
	sudo useradd jisoo
	sudo groupadd blackpink
	sudo usermod -aG blackpink jenny
	sudo usermod -aG blackpink rose
	sudo usermod -aG blackpink lisa
	sudo usermod -aG blackpink jisoo
}

function wordpress() {
	sudo yum update -y
	sudo yum install -y httpd php php-mysqlnd mariadb105-server wget unzip
	sudo systemctl enable httpd mariadb
	sudo systemctl start httpd mariadb
	cd /var/www/html || exit
	sudo wget https://wordpress.org/latest.zip
	sudo unzip latest.zip
	sudo mv wordpress/* /var/www/html/
	sudo rm - rf wordpress latest.zip
	sudo chown -R apache:apache /var/www/html
        sudo chmod -R 755 /var/www/html
	sudo systemctl restart httpd
}

function calculator() {
	echo "Addition: $((12+4))"
	echo "Subtraction: $((12-4))"
	echo "Multiplication: $((12*4))"
	echo "Division: $((12/4))"
}

function binary() {
	sudo yum update -y
	sudo yum install -y tree yum-utils
	sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
	sudo yum -y install terraform
	terraform version
}

k_pop
wordpress
calculator
binary
