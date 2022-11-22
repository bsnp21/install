
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



============== issue ============================
sudo -S gh repo create gh410 --public --clone 
✓ Created repository bsnp21/gh410 on GitHub
hint: Using 'master' as the name for the initial branch. This default branch name
hint: is subject to change. To configure the initial branch name to use in all
hint: of your new repositories, which will suppress this warning, call:
hint: 
hint: 	git config --global init.defaultBranch <name>
hint: 
hint: Names commonly chosen instead of 'master' are 'main', 'trunk' and
hint: 'development'. The just-created branch can be renamed via this command:
hint: 
hint: 	git branch -m <name>
===--------------
git config -l
credential.https://github.com.helper=
credential.https://github.com.helper=!/usr/bin/gh auth git-credential
safe.directory=/var/www/html/wdaws/bb
safe.directory=/var/www/html/wdaws/bist/usrs/github.com/bsnp21/gh001
safe.directory=/home/ubuntu/install
user.name=bsnpghrepolist
===---------------
more ~/.gitconfig 
[credential "https://github.com"]
	helper = 
	helper = !/usr/bin/gh auth git-credential
[safe]
	directory = /var/www/html/wdaws/bb
	directory = /var/www/html/wdaws/bist/usrs/github.com/bsnp21/gh001
	directory = /home/ubuntu/install
[user]
	name = bsnpghrepolist
===------------
more ./gh2/.git/config 

    [core]
        repositoryformatversion = 0
        filemode = true
        bare = false
        logallrefupdates = true
    [remote "origin"]
        url = https://bsnpghrepolist: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@github.com/bsnpghrepolist/gh2.git
        fetch = +refs/heads/*:refs/remotes/origin/*
    [branch "main"]
        remote = origin
        merge = refs/heads/main    
===================---- gh created. 
more .git/config 
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/bsnp21/gh41.git
	fetch = +refs/heads/*:refs/remotes/origin/*

=====----
git remote -v
fatal: detected dubious ownership in repository at '/var/www/html/wdaws/ddir/usrs/github.com/bsnpghrepolist/gh41'
To add an exception for this directory, call:

	git config --global --add safe.directory /var/www/html/wdaws/ddir/usrs/github.com/bsnpghrepolist/gh41
======------
git config --list --show-origin
file:/home/ubuntu/.gitconfig    credential.https://github.com.helper=
file:/home/ubuntu/.gitconfig    credential.https://github.com.helper=!/usr/bin/gh auth git-credential
file:/home/ubuntu/.gitconfig    safe.directory=/var/www/html/wdaws/bb
file:/home/ubuntu/.gitconfig    safe.directory=/var/www/html/wdaws/bist/usrs/github.com/bsnp21/gh001
file:/home/ubuntu/.gitconfig    safe.directory=/home/ubuntu/install
file:/home/ubuntu/.gitconfig    user.name=bsnpghrepolist
======-------


====Mac
wd15inmacpro:MyNodjsModules weiding$ git config -l --show-origin
file:/Library/Developer/CommandLineTools/usr/share/git-core/gitconfig   credential.helper=osxkeychain
file:/Library/Developer/CommandLineTools/usr/share/git-core/gitconfig   init.defaultbranch=main
file:/Users/weiding/.gitconfig  user.username=wdingbox
file:/Users/weiding/.gitconfig  user.email=wdingbox@gmail.com
file:/Users/weiding/.gitconfig  user.name=wdingsoft
file:/Users/weiding/.gitconfig  filter.lfs.required=true
file:/Users/weiding/.gitconfig  filter.lfs.clean=git-lfs clean -- %f
file:/Users/weiding/.gitconfig  filter.lfs.smudge=git-lfs smudge -- %f
file:/Users/weiding/.gitconfig  filter.lfs.process=git-lfs filter-process
file:.git/config        core.repositoryformatversion=0
file:.git/config        core.filemode=true
file:.git/config        core.bare=false
file:.git/config        core.logallrefupdates=true
file:.git/config        core.ignorecase=true
file:.git/config        core.precomposeunicode=true
file:.git/config        remote.origin.url=https://bsnp21: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@github.com/bsnp21/bb.git
file:.git/config        remote.origin.fetch=+refs/heads/*:refs/remotes/origin/*
file:.git/config        branch.main.remote=origin
file:.git/config        branch.main.merge=refs/heads/main
wd15inmacpro:MyNodjsModules weiding$ 


===---
ubuntu@ip-172-31-25-159:/var/www/html/wdaws/ddir/usrs/github.com/bsnpghrepolist/gh3$ git config -l --show-origin
file:/home/ubuntu/.gitconfig    credential.https://github.com.helper=
file:/home/ubuntu/.gitconfig    credential.https://github.com.helper=!/usr/bin/gh auth git-credential
file:/home/ubuntu/.gitconfig    safe.directory=/var/www/html/wdaws/bb
file:/home/ubuntu/.gitconfig    safe.directory=/var/www/html/wdaws/bist/usrs/github.com/bsnp21/gh001
file:/home/ubuntu/.gitconfig    safe.directory=/home/ubuntu/install
file:/home/ubuntu/.gitconfig    safe.directory=*
file:/home/ubuntu/.gitconfig    user.name=bsnpghrepolist
file:.git/config        core.repositoryformatversion=0
file:.git/config        core.filemode=true
file:.git/config        core.bare=false
file:.git/config        core.logallrefupdates=true
file:.git/config        remote.origin.url=https://bsnpghrepolist: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@github.com/bsnpghrepolist/gh3.git
file:.git/config        remote.origin.fetch=+refs/heads/*:refs/remotes/origin/*
file:.git/config        branch.main.remote=origin
file:.git/config        branch.main.merge=refs/heads/main
ubuntu@ip-172-31-25-159:/var/www/html/wdaws/ddir/usrs/github.com/bsnpghrepolist/gh3$ 

===---
gh2$ git config --local --list
core.repositoryformatversion=0
core.filemode=true
core.bare=false
core.logallrefupdates=true
remote.origin.url=https://bsnpghrepolist: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@github.com/bsnpghrepolist/gh2.git
remote.origin.fetch=+refs/heads/*:refs/remotes/origin/*
branch.main.remote=origin
branch.main.merge=refs/heads/main


===-----
git config --global --add safe.directory '*'
git config --global init.defaultBranch main
====----
ubuntu@ip-172-31-25-159:/var/www/html/wdaws/ddir/usrs/github.com/bsnpghrepolist/gh3$ git config --global init.defaultBranch main
ubuntu@ip-172-31-25-159:/var/www/html/wdaws/ddir/usrs/github.com/bsnpghrepolist/gh3$ git config -l --show-origin
file:/home/ubuntu/.gitconfig    credential.https://github.com.helper=
file:/home/ubuntu/.gitconfig    credential.https://github.com.helper=!/usr/bin/gh auth git-credential
file:/home/ubuntu/.gitconfig    safe.directory=/var/www/html/wdaws/bb
file:/home/ubuntu/.gitconfig    safe.directory=/var/www/html/wdaws/bist/usrs/github.com/bsnp21/gh001
file:/home/ubuntu/.gitconfig    safe.directory=/home/ubuntu/install
file:/home/ubuntu/.gitconfig    safe.directory=*
file:/home/ubuntu/.gitconfig    safe.directory=*
file:/home/ubuntu/.gitconfig    user.name=bsnpghrepolist
file:/home/ubuntu/.gitconfig    init.defaultbranch=main
file:.git/config        core.repositoryformatversion=0
file:.git/config        core.filemode=true
file:.git/config        core.bare=false
file:.git/config        core.logallrefupdates=true
file:.git/config        remote.origin.url=https://bsnpghrepolist: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@github.com/bsnpghrepolist/gh3.git
file:.git/config        remote.origin.fetch=+refs/heads/*:refs/remotes/origin/*
file:.git/config        branch.main.remote=origin
file:.git/config        branch.main.merge=refs/heads/main
ubuntu@ip-172-31-25-159:/var/www/html/wdaws/ddir/usrs/github.com/bsnpghrepolist/gh3$ 


bsnpghrepolist$ git config --global --list
credential.https://github.com.helper=
credential.https://github.com.helper=!/usr/bin/gh auth git-credential
safe.directory=/var/www/html/wdaws/bb
safe.directory=/var/www/html/wdaws/bist/usrs/github.com/bsnp21/gh001
safe.directory=/home/ubuntu/install
safe.directory=*
user.name=bsnpghrepolist
ubuntu@ip-172-31-25-159:/var/www/html/wdaws/ddir/usrs/github.com/bsnpghrepolist$ 


ubuntu@ip-172-31-25-159:/var/www/html/wdaws/ddir/usrs/github.com/bsnpghrepolist$ git config --system --list
fatal: unable to read config file '/etc/gitconfig': No such file or directory
ubuntu@ip-172-31-25-159:/var/www/html/wdaws/ddir/usrs/github.com/bsnpghrepolist$ 