#!/bin/sh

# oh-my-zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# Fix this on linux 
if [ `uname` = "Linux" ]; then
    chsh -s /bin/zsh
fi

TD=`mktemp -d XXXXXX`

curl -L https://github.com/jcs/dotfiles/tarball/master | tar -C $TD -xzf 

cd $TD/mrm-*/.vim/bundle

# Download all vim plugins
git clone https://github.com/vim-scripts/closetag.vim.git
git clone https://github.com/kien/ctrlp.vim.git
git clone https://github.com/sjl/gundo.vim.git
git clone https://github.com/Lokaltog/vim-easymotion.git
git clone https://github.com/scrooloose/nerdtree.git

cd -

rm -f $TD/mrm-*/setup.sh
mv $TD/mrm-*/* .

rm -rf $TD
