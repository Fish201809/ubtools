# 从github克隆最新vim源码
git clone https://github.com/vim/vim.git
# 进入源码目录
cd vim
# 配置生成Makefile
./configure --with-features=huge \
            --enable-pythoninterp=yes \
            --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu/ \
            --enable-python3interp=yes \
            --with-python3-config-dir=/usr/lib/python3.5/config-3.5m-x86_64-linux-gnu/ \
            --enable-rubyinterp=yes \
            --enable-luainterp=yes \
            --enable-perlinterp=yes \
            --enable-tclinterp=yes \
            --enable-multibyte \
            --enable-cscope \
            --enable-gui=gtk2
# 编译
make -j8
# 安装（输入软件说明一路回车）
sudo checkinstall
# 完成后删除源码
cd ..
sudo rm -rf vim
# 使用dpkg查看
dpkg -l vim
# 设置vim为默认编辑器（vi和editor默认调用vim）
sudo update-alternatives --install /usr/bin/editor editor /usr/local/bin/vim 50
sudo update-alternatives --set editor /usr/local/bin/vim
sudo update-alternatives --install /usr/bin/vi vi /usr/local/bin/vim 50
sudo update-alternatives --set vi /usr/local/bin/vim

#安装vim8
#vim8新增了异步处理任务的特性，这使很多插件任务运行时vim还可以正常编辑，不会卡顿。由于gutentags插件需要vim8.0以上的版本才能工作，还有vim7更新GTAGS和cscope数据#库时也会导致vim卡住不动，及其影响编辑体验，所以有必要安装最新的vim8。
#
#ubuntu16.04的官方软件源目前没有vim8的deb，ubuntu18.04虽然支持apt直接安装vim8.0，但是默认安装不支持python，所以建议使用源码安装
