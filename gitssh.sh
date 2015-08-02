#! /bin/sh
# This script must be installed in the user home directory 
# It allows to use git with the dropbear ssh client
# The script is only necessary for the E100

dbclient -y -i ~/.ssh/id_rsa $*

