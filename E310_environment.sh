#!/bin/bash
# Environment variables for an E310 installation

echo "E310_enviromment is being executed"

# Environment common to all installations
source $HOME/installation/common_environment.sh

# Enviroment specific to an E310

export LD_LIBRARY_PATH=/usr/local/lib # Necessary for libserial

echo "E310_enviromment has completed"


