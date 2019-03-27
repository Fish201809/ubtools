# 下载gnu-global源码
wget http://tamacom.com/global/global-6.6.2.tar.gz
# 解压
tar xvf global-6.6.2.tar.gz
# 进入源码目录
cd global-6.6.2
# 配置生成Makefile
./configure
# 编译
make -j8
# 安装（输入软件说明一路回车）
sudo checkinstall
# 完成后删除源码
cd ..
sudo rm -rf global-6.6.2*
# 使用dpkg查看
dpkg -l global

#global（gnu-global内部包含gtags、global、gtags-cscope）功能和cscope差不多，
#可以生成gtags数据库，比cscope强的地方在于数据库增量更新非常快，比ctags强的地方在#于不仅能查找定义还能查找引用。
