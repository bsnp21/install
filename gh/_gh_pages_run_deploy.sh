


echo reponame=$1

git clone https://github.com/bsnpghrepolist/$1.git

cd $1
echo "[./myoj/e_Note](./myoj/e_Note.json)">account/README.md
echo node_modules > .gitignore
npm i gh-pages
npm init -y 
# modify  package.script in package.json
sudo vi package.json #add "deploy":"gh-pages -d account"
npm run deploy

#published site:
echo https://bsnpghrepolist.github.io/$1/myoj/e_Note_json.js