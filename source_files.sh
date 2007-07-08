# This scipt install all the sources files required for the hdr modem project
# The requirements are:
# An SSH key must have been setup on the system as well as on github
#

# HdrModem

mkdir /home/modemdev
cd /home/modemdev

git clone git@github.com:Radioguy00/HdrModem.git hdr_modem

# SrcLibraries

cd /home/modemdev
mkdir src_libraries
cd src_libraries
git clone git@github.com:Radioguy00/SrcDsp.git dsp
git clone git@github.com:Radioguy00/SrcSatelliteCode.git satellite_code
git clone git@github.com:Radioguy00/SrcUtilities.git utilities
git clone git@github.com:Radioguy00/SrcUhdUtilities.git uhdutilities

# SrcLibrariesTest

mkdir /home/modemdev/src_libraries_test
cd /home/modemdev/src_libraries_test

git clone git@github.com:Radioguy00/SrcDspTest.git dsp_test

# GCC TESTS

cd /home/modemdev
git clone git@github.com:Radioguy00/E100GccTests.git gcc_tests

# OG1 DOWNLINK

cd /home/modemdev
git clone git@github.com:Radioguy00/Og1Downlink.git og1_downlink

# UHD TESTS

cd /home/modemdev
git clone git@github.com:Radioguy00/UhdTests.git uhd_tests


# ROUTINE COMPLETION

echo "*******   Installation script has completed **********"

