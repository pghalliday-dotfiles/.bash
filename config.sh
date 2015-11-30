# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export CLICOLOR=1
alias ll='ls -la'
PS1='[\u@\h \W]\$ '

# add local gem binaries to path
export PATH=$PATH:~/.gem/ruby/2.2.0/bin

for file in ~/.bash/config/*
  do . $file
done
