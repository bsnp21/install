# create my-project and clone 
echo $1

gh auth refresh -s delete_repo
# browser https://login/device 
# autherize

gh repo delete --confirm gh2sample