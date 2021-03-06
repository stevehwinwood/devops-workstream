#!/bin/bash
sudo yum install epel-release wget unzip vim git -y
sudo yum install python34 -y
curl -O https://pypi.python.org/packages/source/v/virtualenv/virtualenv-13.1.2.tar.gz
tar xvfz virtualenv-13.1.2.tar.gz
cd virtualenv-13.1.2
sudo /usr/bin/python3.4 setup.py install
cd ~
virtualenv mave
source ./mave/bin/activate
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
sudo pip install awscli --upgrade --user
sudo pip install aws-shell
wget -O terraform_0.11.3_linux_amd64.zip https://releases.hashicorp.com/terraform/0.11.3/terraform_0.11.3_linux_amd64.zip?_ga=2.198897391.1509687785.1519136753-1417898106.1519136753
unzip terraform_0.11.3_linux_amd64.zip
sudo mv ./terraform /usr/local/bin ; sudo chown root:root /usr/local/bin/terraform ; sudo chmod 755 /usr/local/bin/terraform
wget -O packer_1.2.0_linux_amd64.zip https://releases.hashicorp.com/packer/1.2.0/packer_1.2.0_linux_amd64.zip?_ga=2.167406846.136588575.1519136961-1144394424.1519136961
unzip packer_1.2.0_linux_amd64.zip
sudo mv ./packer /usr/local/bin ; sudo chown root:root /usr/local/bin/packer ; sudo chmod 755 /usr/local/bin/packer
curl -LO https://amazon-eks.s3-us-west-2.amazonaws.com/1.10.3/2018-06-05/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
curl -LO https://amazon-eks.s3-us-west-2.amazonaws.com/1.10.3/2018-06-05/bin/linux/amd64/heptio-authenticator-aws
chmod +x ./heptio-authenticator-aws
sudo mv ./heptio-authenticator-aws /usr/local/bin/heptio-authenticator-aws
sudo su
echo 'export PATH=$PATH:/usr/local/bin' >> ~/.bashrc
echo 'export PATH=~/.local/bin:$PATH' >> ~/.bashrc
source ~/.bashrc
