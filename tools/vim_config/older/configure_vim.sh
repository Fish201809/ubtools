
#Vundle	插件
#git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 2>/dev/null

#拷贝一些必要配置
cp vimrc ~/.vimrc
cp ycm_extra_conf.py ~/.vim/plug/YouCompleteMe/third_party/ycmd/cpp/ycm 
cp libclang-7.0.0-x86_64-unknown-linux-gnu.tar_2.bz2 ~/.vim/plug/YouCompleteMe/third_party/ycmd/clang_archives/libclang-7.0.0-x86_64-unknown-linux-gnu.tar.bz2 

#YouCompleteMe 插件
git clone https://github.com/Valloric/YouCompleteMe.git ~/.vim/plug/YouCompleteMe 
cd ~/.vim/bundle/YouCompleteMe  
git submodule update --init --recursive  

#vim +BundleInstall +qall

#vim-plug 插件
#mkdir ~/.vim/autoload/
#cd ~/.vim/autoload/
#wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


sudo apt-get install python2.7-dev
sudo apt install python-pip
pip install flake8
cd ~/.vim/plug/YouCompleteMe
./install.py --clang-completer 
