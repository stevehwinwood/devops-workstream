#!/bin/bash
sudo yum install epel-release wget unzip vim -y
sudo yum install python34 -y
curl -O https://pypi.python.org/packages/source/v/virtualenv/virtualenv-13.1.2.tar.gz
tar xvfz virtualenv-13.1.2.tar.gz
cd virtualenv-13.1.2
sudo /usr/bin/python3.4 setup.py install
cd ~
virtualenv mave
source ./mave/bin/activate
pip install awscli --upgrade
pip install aws-shell
wget -O terraform_0.11.3_linux_amd64.zip https://releases.hashicorp.com/terraform/0.11.3/terraform_0.11.3_linux_amd64.zip?_ga=2.198897391.1509687785.1519136753-1417898106.1519136753
unzip terraform_0.11.3_linux_amd64.zip
sudo mv ./terraform /usr/local/bin ; sudo chown root:root /usr/local/bin/terraform ; sudo chmod 755 /usr/local/bin/terraform
wget -O packer_1.2.0_linux_amd64.zip https://releases.hashicorp.com/packer/1.2.0/packer_1.2.0_linux_amd64.zip?_ga=2.167406846.136588575.1519136961-1144394424.1519136961
unzip packer_1.2.0_linux_amd64.zip
sudo mv ./packer /usr/local/bin ; sudo chown root:root /usr/local/bin/packer ; sudo chmod 755 /usr/local/bin/packer
sudo su
echo 'export PATH=$PATH:/usr/local/bin' >> ~/.bashrc
source ~/.bashrc
