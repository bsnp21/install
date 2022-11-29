

echo reponame=$1
cd $1
echo "./myoj/e_Note(e_Note.json)">account/README.md
echo node_modules > .gitignore
npm i gh-pages
npm init -y 
# modify  package.script in package.json
sudo vi package.json #add "deploy":"gh-pages -d account"
npm run deploy
