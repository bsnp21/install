# create my-project and clone 
# gh repo create gh001 --public --clone

mkdir git001
cd git001

#or create a new repository on the command line
echo "# gh001" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/bsnp21/git001.git
git push -u origin main

