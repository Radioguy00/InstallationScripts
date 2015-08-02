#!/bin/bash

# Master script to configure an E100 or an E310 for the OG1 downlink monitor or the
# HDR modem.


# Determine which type of hardware this is.
# For the time being we rely on the user passing one of the following
# strings: E100 or E310

if [ $# -ne 1 ]
then 
	echo "Usage $0 E100|E310"
	exit 1
fi

if [ "$1" != "E100" -a "$1" != "E310" ]
then
	echo "Usage $0 E100|E310"
	exit 1
fi


# SOURCES FILES INSTALLATION



# ENVIRONNMENT SETTING

alias_script=${1}_aliases.sh
environment_script=${1}_environment.sh

echo $alias_script
echo $environment_script


# Is the environment definition file already called by .bash_profile?

if  ! grep "$environment_script" $HOME/.bash_profile > /dev/null 
then
	echo "source $HOME/installation/$environment_script" >> $HOME/.bash_profile
	echo "Call for $environment_script was added to .bashprofile"
else
	echo "Call for $environment_script already exist in .bashprofile"
fi

# Is the alias file already called by .bash_profile?

if  ! grep "$alias_script" $HOME/.bash_profile > /dev/null 
then
	echo "source $HOME/installation/$alias_script" >> $HOME/.bash_profile
	echo "Call for $alias_script was added to .bash_profile"
else
	echo "Call for $alias_script already exist in .bash_profile"
fi


# Is the alias definition file already called by .bashrc?
if  ! grep "$alias_script" $HOME/.bashrc > /dev/null 
then
	echo "source $HOME/installation/$alias_script" >> $HOME/.bashrc
	echo "Call for $alias_script was added to .bashrc"

	# Is the environment definition file already called by .bashrc?
else
	echo "Call for $alias_script already exist in .bashrc"
fi

# VIM EDITOR CONFIGURATION

# Save the original vim configuration if it has not already been saved
if [ -f $HOME/.vimrc -a ! -f $HOME/.vimrc_saved ]
then
	cp $HOME/.vimrc $HOME/.vimrc_saved
	echo "Original .vimrc has been saved in .vimrc_original"
fi
cp $HOME/installation/vim_configuration $HOME/.vimrc




