# create my-project and clone 
echo $1
gh repo create $1 --public --clone

cd $1
echo $1 > readme.txt
git add *
git commit -m "readme.txt"
git branch -M main
git remote add origin https://github.com/$2/$1.git
git push -u origin main
