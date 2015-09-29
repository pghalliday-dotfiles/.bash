# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# add local gem binaries to path
export PATH=$PATH:~/.gem/ruby/2.2.0/bin

for file in ~/.bash/config/*
  do . $file
done
