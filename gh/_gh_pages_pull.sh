



## Only works for public repo.
echo reponame=$1

git clone https://github.com/bsnpghrepolist/$1.git

cd $1
echo "[./myoj/e_Note](./myoj/e_Note.json)">account/README.md
echo node_modules > .gitignore

git checkout --orphan gh-pages
git rm -rf .