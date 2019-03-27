#添加vimrc配置
#需要的插件
#vim中文帮助手册：yianwillis/vimcdoc
#c++语法高亮增强：octol/vim-cpp-enhanced-highlight
#最近打开的文件维护插件：vim-scripts/mru.vim
#状态栏插件：
#vim-airline/vim-airline
#vim-airline/vim-airline-themes
#Taglist插件：vim-scripts/taglist.vim
#树形目录插件：scrooloose/nerdtree
#通用函数插件：vim-scripts/genutils
#查找文件插件(依赖于genutils)：vim-scripts/lookupfile
#自动更新tags插件：ludovicchabant/vim-gutentags
#自动加载切换gtags数据库：skywind3000/gutentags_plus
#预览 quickfix 窗口 ctrl-w z 关闭：skywind3000/vim-preview
#代码补齐插件：
#MarcWeber/vim-addon-mw-utils
#tomtom/tlib_vim
#garbas/vim-snipmate
#代码补齐模板：honza/vim-snippets
#自动补全插件YCM：Valloric/YouCompleteMe
#异步静态代码检查：w0rp/ale
#主题配色：
#morhetz/gruvbox
#mhinz/vim-janah
#nanotech/jellybeans.vim
#tomasr/molokai
#jpo/vim-railscasts-theme
#tpope/vim-vividchalk
#joshdick/onedark.vim



#说明：
#拷贝上文vimrc写入新建的~/.vimrc，然后打开vim，输入命令 :PlugInstall 即可自动安装插件。
#由于YCM插件有接近400M大小，下载很慢所以建议先注释掉Plug ‘Valloric/YouCompleteMe’，等安装完其余插件后再取消注释单独安装YCM。
#YCM下载需要等待一段时间，下载完成可进入~/.vim/plug/YouCompleteMe下执行：git submodule update --init --recursive检查完整性
#使用 :PlugInstall 安装YCM，会自动下载自动执行./install.py --clang-completer编译，编译过程中会自动下载libclang7.0，不需要系统手动安装libclang，不过下载可能失败，如果自动编译不成功，需要进入：~/.vim/plug/YouCompleteMe目录下手动执行：./install.py --clang-completer进行编译。
#最后8行符号需要powerline字体才能显示，可以参考.vim/plug/vim-airline/doc/airline.txt第300行左右的配置。
#安装完成后效果

cp vimrc ~/.vimrc
cp ./ycm_extra_conf.py ~/.vim/.ycm_extra_conf.py
