


# install gh : the github cli. 
sudo apt-get install gh

gh --version
gh auth --help

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
  
