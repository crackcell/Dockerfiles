FROM ubuntu
MAINTAINER Menglong TAN <tanmenglong@gmail.com>

RUN apt-get update \
    apt-get install -y zsh emacs git subversion build-essential nano golang valgrind cmake \
    apt-get install -y openssh-server \
    mkdir /var/run/sshd \
    echo "root:root" | chpasswd \
    useradd crackcell -s /bin/zsh \
    mkdir -p /home/crackcell \
    git clone https://github.com/crackcell/emacs-plugins.git \
    mkdir /home/crackcell/.emacs.d -p \
    mv emacs-plugins /home/crackcell/.emacs.d \
    cp /home/crackcell/.emacs.d/emacs-plugins/emacs /home/crackcell/.emacs \
    git clone git://github.com/robbyrussell/oh-my-zsh.git \
    mv oh-my-zsh /home/crackcell/.oh-my-zsh \
    locale-gen en_US.UTF-8 \
    zshrc /home/crackcell/.zshrc \
    gitconfig /home/crackcell/.gitconfig \
    sudoers /etc/sudoers \
    chown -R crackcell:crackcell /home/crackcell

EXPOSE 22

# startup
#ENTRYPOINT /etc/init.d/ssh start
