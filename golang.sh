sudo apt-get update -y
sudo apt-get -y upgrade
sudo apt-get install build-essential -y
wget https://dl.google.com/go/go1.16.4.linux-amd64.tar.gz 
sudo tar -xvf go1.16.4.linux-amd64.tar.gz  
sudo mv go /usr/local
mkdir -p $HOME/winlab
echo 'export GO111MODULE=on' >> ~/.bash_profile
echo "export GOROOT=/usr/local/go" >> ~/.bash_profile 
echo 'export PATH=$GOROOT/bin:$PATH' >> ~/.bash_profile
