# 备份原来的vim配置
tar czvf vimbak.tar.gz ~/.vim ~/.vimrc
# 删除vim配置文件
rm -rf ~/.vim*
# 下载安装vim-plug插件
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#vim-plug是一个类似于Vundle的vim插件管理器，比Vundle更强大的地方在于支持全异步并发安装更新加载插件，还有支持插件按指定条件加载和延迟加载。
#关于vim-plug怎么使用这里由于篇幅原因不细说，请参考一下链接：
#https://vim.ink/vim-plug.html
#https://www.jianshu.com/p/f4fb7877829f
