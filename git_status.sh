#!/bin/bash
# Verify the version control status of all source directory and
# commit them push the source code if necessary

INSTALL_HOME=/home/modemdev
LOG_FILE=$INSTALL_HOME/git_status.log

cd $INSTALL_HOME
if [ -f $LOG_FILE ]
then
	rm -f $LOG_FILE
fi


function check_status()
{
	echo " " >> $LOG_FILE
	echo "*************** $1 *************" >> $LOG_FILE
	if [ -d $INSTALL_HOME/$1 ]
	then
		cd $INSTALL_HOME/$1
		git fetch >> $LOG_FILE 2>&1
		git status >> $LOG_FILE 2>&1
	else
		echo "$1 is an invalid git directory"
	fi
}

# Perform a git status on all dirctory to see which one
# need to be updated

check_status "gcc_tests"
check_status "og1_downlink"
check_status "hdr_modem"
check_status "src_libraries/dsp"
check_status "src_libraries/satellite_code"
check_status "src_libraries/uhdutilities"
check_status "src_libraries/utilities"
check_status "uhd_tests"
check_status "src_libraries_test/dsp_test"

cat $LOG_FILE


