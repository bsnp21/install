# 
# gh auth login 
#


./_gh_auth_tok.sh

tmpfile="gh_token.tmp"

gh auth login --git-protocol ssh --hostname github.com --with-token < ${tmpfile} 

rm ${tmpfile}