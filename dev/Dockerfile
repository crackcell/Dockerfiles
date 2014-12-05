FROM ubuntu
MAINTAINER Menglong TAN <tanmenglong@gmail.com>

RUN apt-get update

# locale
RUN locale-gen en_US.UTF-8

# dev
RUN apt-get install -y zsh emacs git subversion build-essential nano golang valgrind cmake

# openssh
RUN apt-get install -y openssh-server
RUN mkdir /var/run/sshd
RUN echo "root:root" | chpasswd
EXPOSE 22

# user

RUN useradd crackcell -s /bin/zsh
RUN mkdir -p /home/crackcell

## emacs-plugins
RUN git clone https://github.com/crackcell/emacs-plugins.git
RUN mkdir /home/crackcell/.emacs.d -p
RUN mv emacs-plugins /home/crackcell/.emacs.d
RUN cp /home/crackcell/.emacs.d/emacs-plugins/emacs /home/crackcell/.emacs

## ohmyzsh
RUN git clone git://github.com/robbyrussell/oh-my-zsh.git
RUN mv oh-my-zsh /home/crackcell/.oh-my-zsh

## locale
RUN locale-gen en_US.UTF-8

ADD zshrc /home/crackcell/.zshrc
ADD gitconfig /home/crackcell/.gitconfig
ADD sudoers /etc/sudoers

RUN chown -R crackcell:crackcell /home/crackcell

# startup
#ENTRYPOINT /etc/init.d/ssh start
