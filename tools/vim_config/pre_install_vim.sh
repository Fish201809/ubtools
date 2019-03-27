# 卸载老旧发霉的exuberant-ctags
sudo apt-get --purge remove exuberant-ctags
# 卸载旧版vim及其相关组件
sudo apt-get --purge remove vim*
# 自动卸载无用依赖软件
sudo apt-get --purge autoremove
# 清理无用软件包
sudo apt-get autoclean
# 更新软件源
sudo apt-get update
# 安装checkinstall
sudo apt-get install checkinstall
# 安装pyton库
sudo apt-get -f install python-dev
sudo apt-get -f install python3-dev
# 安装界面相关库
sudo apt-get install libncurses5-dev
# 安装编译工具集
sudo apt-get install cmake build-essential
# 安装自动配置工具
sudo apt-get install autoconf pkg-config

#exuberant-ctags 已经8年没更新，抛弃它，使用基于它之上的universal-ctags替代。
#由于YCM插件需要python支持，所以要卸载apt方式安装的vim，自行使用源码编译安装的最新vim。
#make install安装软件会在/usr/local/下的各个子目录分别生成软件相关文件，这会导致如果想卸载软件很麻烦，需要从一个个目录中找出要卸载的软件相关的所有文件，然后一#一删除。当然也可以在configure的时候为软件指定好单独的安装目录（例如：/opt/xxx , /usr/local/xxx 等等），这个做法的好处是卸载软件只需要删除指定的那个目录就行了，但是这样做安装完后shell找不到软件在哪里，还需要修改环境变量PATH增加新安装的软件路径才能正常使用，如果安装的软件太多，那么PATH就会特别长而且很乱，所以这种方式也不太好。checkinstall是一个源码安装工具，它收集安装信息，并且生成deb软件包，这使得所安装的软件可以用dpkg 来管理，dpkg -l xxx查询，dpkg -P xxx卸载干净。
#python 库是必需的，很多插件需要python。
#ncurses 是独立于终端基于文本的用户界面库，很多软件需要调用它提供的api（比如：make menuconfig）。
#build-essential 是编译工具集，编译源码基本少不了它。
#cmake 是一个基于软件源码自动生成Makefile的工具。
#autoconf 是一个自动配置源码的工具，编译universal-ctags时需要。
#https://blog.csdn.net/oaix101125/article/details/85019942 
