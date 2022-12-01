# create my-project and clone 
# gh repo create gh001 --public --clone

mkdir $1
cd $1

#or create a new repository on the command line
echo "# gh001" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/bsnpghrepolist/$1.git
git remote set-url origin https://a:b@github.com/bsnpghrepolist/$1.git
git push -u origin main

