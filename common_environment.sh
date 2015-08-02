#!/bin/bash
# This script should be called by .bashrc 
# It includes the environment variables

export LD_LIBRARY_PATH=/home/modemdev/libserial/lib
export TERM=linux
PS1='\[\e[0;31m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[0;31m\]\$ \[\e[m\]'


