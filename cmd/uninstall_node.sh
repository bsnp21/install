

# https://askubuntu.com/questions/786015/how-to-remove-nodejs-from-ubuntu-16-04 
# need To remove node js, npm and node_modules from Ubuntu, you need to remove containers also which are at different locations in Ubuntu. These could be as:
#/usr/local/bin/npm, /usr/local/share/man/man1/node, /usr/local/lib/dtrace/node.d, ~/.npm ~/.node-gyp, /opt/local/bin/node, opt/local/include/node, /opt/local/lib/node_modules
sudo apt-get purge --auto-remove nodejs
sudo apt-get purge --auto-remove nodejs



#First of all you need to run the following command from command terminal as sudo.

sudo rm -rf /usr/local/bin/npm /usr/local/share/man/man1/node* /usr/local/lib/dtrace/node.d ~/.npm ~/.node-gyp /opt/local/bin/node opt/local/include/node /opt/local/lib/node_modules
# Remove node or node_modules directories from /usr/local/lib with the help of following command.

sudo rm -rf /usr/local/lib/node*
# Remove node or node_modules directories from /usr/local/include with the help of following command.

sudo rm -rf /usr/local/include/node*
# Remove any node file or dir from /usr/local/bin with the help of following command.

sudo rm -rf /usr/local/bin/node*
# Go to home directory and remove any node or node_modules directory, if exists.




sudo apt-get remove nodejs

sudo apt-get remove npm



#  ubuntu@ip-172-31-87-112:~/install/cmd$  node -v
#  v10.19.0
#  ubuntu@ip-172-31-87-112:~/install/cmd$ npm -v
#  ERROR: npm is known not to run on Node.js v10.19.0
#  You'll need to upgrade to a newer Node.js version in order to use this
#  version of npm. You can find the latest version at https://nodejs.org/


# https://askubuntu.com/questions/1382565/npm-does-not-support-node-js-v10-19-0
# | NodeJS  | `npm --version` |
# |---------|-----------------|
# | Node 16 | 6.0+            |
# | Node 14 | 4.14+           |
# | Node 12 | 4.12+           |
# | Node 10 | 4.9+, <6.0      |