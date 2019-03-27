# 从github克隆最新universal-ctags源码
git clone https://github.com/universal-ctags/ctags.git
# 进入源码目录
cd ctags
# 运行自动配置脚本
./autogen.sh
# 配置生成Makefile
./configure
# 编译
make -j8
# 安装（输入软件说明一路回车）
# checkinstall的时候版本号不能为空（可以填0.0.0）
sudo checkinstall
# 完成后删除源码
cd ..
#sudo rm -rf ctags
# 使用dpkg查看
dpkg -l ctags
