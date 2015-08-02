# This script install all the sources files required for the hdr modem project
# The requirements are:
# 1) An SSH key must have been setup on the system as well as on github
#

INSTALL_HOME=$INSTALL_HOME  # Directory where all the source files are installed.

# CLEAN UP
read -p "Do you really want to remove all source files?(y/n)" 

if [ $REPLY != "y" ]
then
	echo "Operation aborted by user"
	exit 0
fi
	
rm -fr $INSTALL_HOME

# GIT ACCESS TEST

ssh -T git@github.com

# HdrModem

mkdir $INSTALL_HOME
cd $INSTALL_HOME

git clone git@github.com:Radioguy00/HdrModem.git hdr_modem

# SrcLibraries

cd $INSTALL_HOME
mkdir src_libraries
cd src_libraries
git clone git@github.com:Radioguy00/SrcDsp.git dsp
git clone git@github.com:Radioguy00/SrcSatelliteCode.git satellite_code
git clone git@github.com:Radioguy00/SrcUtilities.git utilities
git clone git@github.com:Radioguy00/SrcUhdUtilities.git uhdutilities

# SrcLibrariesTest

mkdir $INSTALL_HOME/src_libraries_test
cd $INSTALL_HOME/src_libraries_test

git clone git@github.com:Radioguy00/SrcDspTest.git dsp_test

# GCC TESTS

cd $INSTALL_HOME
git clone git@github.com:Radioguy00/GccTests.git gcc_tests

# OG1 DOWNLINK

cd $INSTALL_HOME
git clone git@github.com:Radioguy00/Og1Downlink.git og1_downlink

# UHD TESTS

cd $INSTALL_HOME
git clone git@github.com:Radioguy00/UhdTests.git uhd_tests

# DIRECTORY ACCESS

chown root $INSTALL_HOME

# SCRIPTS TO BE PLACED IN INSTALL_HOME
cp $HOME/installation/git_status.sh $INSTALL_HOME
chmod u+x $INSTALL_HOME/git_status.sh

# ROUTINE COMPLETION

echo "*******   Installation script has completed **********"

