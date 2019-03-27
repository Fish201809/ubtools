
#tldr tool
sudo apt-get install -y npm
sudo npm install -y -g tldr
sudo apt-get install -y nodejs-legacy


#配置SSH远程连接服务
sudo apt-get install openssh-server
#检查ssh服务状态 
#sudo service ssh status

#开启ssh服务
sudo service ssh start

sudo mkdir -p -v /usr/share/stardict/dic/
#词典
sudo apt-get install sdcv
sudo unzip ~/work/tools/resource/star.zip -d /usr/share/stardict/dic/

sudo python -m pip install flake8
sudo python3 -m pip install nose
