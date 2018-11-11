# mkdir

mkdir -p Codes
mkdir -p Documents
mkdir -p Softwares


# installation
sudo apt-get -y install mosh
sudo apt-get -y install emacs-nox
sudo apt-get -y install sbcl
sudo apt-get -y install w3m
sudo apt-get -y install tmux
sudo apt-get -y install wget
sudo apt-get -y install git
sudo apt-get -y install zsh


# this is for zsh
echo "exec zsh" >> .bashrc
cp Downloads/server_upload/.zshrc .zshrc

# this is for emacs
cp Downloads/server_upload/.emacs .emacs

sudo sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
emacs --eval '(progn (find-file "~/Downloads/server_upload/emacs_init.el") (eval-buffer))'


# this is for quicklisp

sbcl --non-interactive --load Downloads/server_upload/quicklisp.lisp

cp Downloads/server_upload/slime-helper.el quicklisp/


# this is for git

sh Downloads/server_upload/git_init.sh


# copy test file

cp Downloads/server_upload/server_test.sh .



# clean up
rm -f server_init_remote.sh 



