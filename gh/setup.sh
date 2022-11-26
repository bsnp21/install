

#need for dual github accounter users.



# install gh : the github cli. 

sudo apt-get install gh

#  ubuntu@ip-172-31-87-112:~/install/cmd$ gh --verion
#  
#  Command 'gh' not found, but can be installed with:
#  
#  sudo snap install gh       # version 2.6.0-15-g1a10fd5a, or
#  sudo apt  install gitsome  # version 0.8.0+ds-4
#  
#  See 'snap info gh' for additional versions.


sudo snap install gh
gh --version
gh auth --help


# ubuntu@ip-172-31-87-112:~/install/cmd$ gh --version
# gh version 2.6.0-15-g1a10fd5a (2022-03-16)
# https://github.com/cli/cli/releases/latest

# login 
gh auth login 
# > GitHub.com   <==selected
#   Enterprise.personal.

# > HHPS     <==selected
#   SSH

#  ! First copy your one-time code: A7BB-6342
#  - Press Enter to open github.com in your browser... 

# > Login with a web browser  <==Selected. 
#   Paste an authentication token

# (1) web browser login you github account. then
# (2) open: https://github.com/login/device
# (3) copy paste the code to authorize.

gh auth status
# github.com
#   ✓ Logged in to github.com as bsnp21 (/home/ubuntu/.config/gh/hosts.yml)
#   ✓ Git operations for github.com configured to use https protocol.
#   ✓ Token: *******************
  

# upload existing git port 
# gh repo create _gh_001 --public  --source=. --remote=upstream

