# 从github克隆最新powerline/fonts源码
git clone https://github.com/powerline/fonts.git --depth=1
# 进入源码目录
cd fonts
# 执行安装脚本
./install.sh
# 完成后删除源码
cd ..
rm -rf fonts

echo "设置终端字体 ubuntu终端标题栏选择 Edit >> ProfilePreference >> General >> Custom font 选择原来的字体替换成带Powerline的同名字体 ："

#安装fonts-powerline
#fonts-powerline 基于终端的字体，vim状态栏插件ariline需要它（不然箭头图标等显示不正确）。
