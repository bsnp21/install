
# create my-project and clone 
gh repo create gh001 --public --clone



or create a new repository on the command line
echo "# _gh_001" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/bsnp21/_gh_001.git
git push -u origin main


…or push an existing repository from the command line
git remote add origin https://github.com/bsnp21/_gh_001.git
git branch -M main
git push -u origin main