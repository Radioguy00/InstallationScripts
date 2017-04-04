# This script install all the sources files required for the following projects:
#	hdr modem project
#	ais_tx
#	og1_downlink
#
# The requirements are:
# 1) An SSH key must have been setup on the system as well as on github
#

INSTALL_HOME=~/applications  # Directory where all the source files are installed.

# CLEAN UP
read -p "Do you really want to remove all source files?(y/n)" 

if [ $REPLY != "y" ]
then
	echo "Source file copying operation aborted by user"
	exit 0
fi
	
rm -fr $INSTALL_HOME

# GIT ACCESS TEST

ssh -T git@github.com


mkdir $INSTALL_HOME
cd $INSTALL_HOME

# HdrModem

cd $INSTALL_HOME
INSTALL_SUBDIR=hdr_modem
git clone --origin gh git@github.com:Radioguy00/HdrModem.git $INSTALL_SUBDIR
mkdir $INSTALL_HOME/$INSTALL_SUBDIR/obj
mkdir $INSTALL_HOME/$INSTALL_SUBDIR/output_test_files
mkdir $INSTALL_HOME/$INSTALL_SUBDIR/input_test_files

# AisTx

cd $INSTALL_HOME
INSTALL_SUBDIR=ais_tx
git clone --origin gh git@github.com:Radioguy00/AisTx.git $INSTALL_SUBDIR
mkdir $INSTALL_HOME/$INSTALL_SUBDIR/obj
mkdir $INSTALL_HOME/$INSTALL_SUBDIR/output_test_files
mkdir $INSTALL_HOME/$INSTALL_SUBDIR/input_test_files

# OG1 DOWNLINK

cd $INSTALL_HOME
INSTALL_SUBDIR=og1_dnl
git clone --origin gh git@github.com:Radioguy00/Og1Downlink.git $INSTALL_SUBDIR
mkdir $INSTALL_HOME/$INSTALL_SUBDIR/obj
mkdir $INSTALL_HOME/$INSTALL_SUBDIR/output_test_files
mkdir $INSTALL_HOME/$INSTALL_SUBDIR/input_test_files



# SCRIPTS TO BE PLACED IN INSTALL_HOME
cp $HOME/installation/git_status.sh $INSTALL_HOME
chmod u+x $INSTALL_HOME/git_status.sh

# ROUTINE COMPLETION

echo "*******   Source Files Installation script has completed **********"

