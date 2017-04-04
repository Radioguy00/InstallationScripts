# Install the curses program

cd ~/installation

# Get the file from the FTP server

# Build ncurses
tar -zxvf ncurses-5.9.tar.gz
cd ncurses-5.9
./configure
make
make install


# Build CDK
tar -zxvf cdk.tar.gz
cd cdk-5.0-20161210 
./configure
make
make install

# Build Ctags
tar -zxvf ctags-5.8.tar.gz
cd ctags-5.8
./configure
make
make install
