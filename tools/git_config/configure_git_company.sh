git config --global user.name "qdchen"
git config --global user.email "qdchen@nullmax.ai"
git config --global core.editor vim


git config --global diff.tool vimdiff
git config --global difftool.prompt false
git config --global merge.tool vimdiff
git config --global mergetool.prompt false
git config --global alias.d difftool

ssh-keygen -t rsa

git config --global --list
