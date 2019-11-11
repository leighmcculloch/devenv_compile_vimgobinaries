FROM golang:latest

RUN apt-get update
RUN apt-get install -y vim

RUN git clone https://github.com/fatih/vim-go ~/.vim/pack/plugins/start/vim-go

RUN mkdir -p /vimgobin
ENV GOBIN=/vimgobin
RUN vim +GoInstallBinaries +qa
