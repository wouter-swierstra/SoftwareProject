footer: Software project – Lecture 3
slidenumbers: true

# Software Project
### Lecture 3

### Wouter Swierstra

--------------------------------------------------------------------------------

# Last time

<br><br><br>

* Scrum planning

* Product backlog

--------------------------------------------------------------------------------

## Working effectively with git and GitHub.

--------------------------------------------------------------------------------

# Collaborative software development

<br>

You have two weeks to finish your user stories.

And need to give a demo at the end.

## How can you develop different stories in parallel without breaking your working prototype?

--------------------------------------------------------------------------------

# Version control

--------------------------------------------------------------------------------

# What is git?

* A popular, powerful distributed file version control system
* It is free and obtainable from [git-scm.com](http://git-scm.com)
* Originally developed to manage the Linux kernel
* An estimated 27 percent of professional developers uses Git (May '12).

--------------------------------------------------------------------------------

# Getting to grips with git

* Git is a very powerful tool with many different features.

* The user interface takes some getting used to...

* When used correctly, it can be extremely effective.

* If you screw up, there is usually a way to undo your changes.

^ StackOverflow!

--------------------------------------------------------------------------------

# Starting a new repo

```
$ git init
Initialized empty Git repository in .git/
```

Add the README.md file to the repository

```
$ git add README.md
```

Commit the changes you made to README.md

```
$ git commit -m "Added README.md"
```

--------------------------------------------------------------------------------

# Cloning an existing repository

To get your hands on a copy of an existing repository use:

```
$ git clone git://github.com/wouter-swierstra/SoftwareProject
```

Note that `git clone` supports several different protocols, including SSH.

--------------------------------------------------------------------------------

# Git vs Svn

Git is a *distributed* version control system:

* a copy of a repository can share changes with any other copy.
* almost all commands operate on your *local copy*
* sharing changes with others happens in two steps:
    - commiting your changes locally
    - pushing these changes to a remote server

--------------------------------------------------------------------------------

# Git terminology

![inline](img/04-git-terminology.png)

Picture from Scott Chacon's *Pro-Git*.

^ Untracked -- not in the repository

^ Unmodified -- tracked, but not modified

^ Modified -- tracked and modified

^ Staged -- modified and to be included in the next commit

--------------------------------------------------------------------------------

# Git status

```
$ git status
# On branch master
nothing to commit (working directory clean)

$ emacs 04-slides.md
$ git status

# On branch master
# Untracked files:
#   (use "git add <file>..." to include in what will be committed)
#
#   04-slides.md
```

^ So we need to add 04-slides.md

--------------------------------------------------------------------------------

# Adding new files

```
$ git add 04-slides.md
$ git status
# On branch master
# Changes to be committed:
#    (use "git reset HEAD <file>..." to unstage)
# 
#    new file: 04-slides.md
```

--------------------------------------------------------------------------------

# Staging modified files


Similarly, we can stage modified files using `git add`.

```
$ emacs README.md
$ git add README.md
# On branch master
# Changes to be committed:
#    (use "git reset HEAD <file>..." to unstage)
# 
#    new file: 04-slides.md
#    modified: README.md
```

Git gives you control over which files to include in a single commit.

--------------------------------------------------------------------------------

# Pro-tip: .gitignore to minimize noise

Generated binaries, documentation, and so forth are not under version control, but keep showing up when you run `git status`.

You can have a `.gitignore` file, listing the files, directories, and patterns that you want git to ignore:

```
$ cat .gitignore
*.pdf
.DS_Store
build/
```

--------------------------------------------------------------------------------

# Committing your changes

The `git commit` command commits all the staged changes.

```
$ git commit -m "Added 04-slides.md; updated README.md"
[master 76d15ab] Added 04-slides.md; updated README.md
 1 files changed, 1 insertions(+), 0 deletions(-)
 create mode 100644 04-slides.md
```

These changes are recorded *locally* but not yet shared with others.

--------------------------------------------------------------------------------

# Not mentioned

* `git mv` to rename files, without losing their history

* `git rm` to remove files from the repository

* `git commit -a` to record all your changes to tracked files

* `git log` to get an overview of recent changes

* `git reset` to undo changes

--------------------------------------------------------------------------------

# Sharing your changes

All these commands operate on your local copy of the repository.

Nothing is shared with others yet.

* `git pull` – pulls in changes from some other repository
* `git push` – pushes your changes to another repository

These commands communicate with *remote repositories*.

--------------------------------------------------------------------------------

# Basic usage: git push

```
$ git clone git://github.com/wouter-swierstra/SoftwareProject
...
$ emacs 04-slides.md
$ git commit -am "Updated slides on git"
$ git push
```

--------------------------------------------------------------------------------

# Showing remote repositories

```
$ git clone git://github.com/wouter-swierstra/SoftwareProject
...
$ git remote -v
origin	git://github.com/wouter-swierstra/SoftwareProject (push)
origin	git://github.com/wouter-swierstra/SoftwareProject (fetch)
```

--------------------------------------------------------------------------------

# Pull changes from remote repositories

```
$ git pull
remote: Counting objects: 45, done.
remote: Total 45 (delta 2), reused 2 (delta 2), pack-reused 43
Unpacking objects: 100% (45/45), done.
From https://git.science.uu.nl/swier004/my-repository
   543d40c..8497463  master     -> origin/master
 * [new branch]      redirect   -> origin/redirect
Updating 543d40c..8497463
Fast-forward
...
```

--------------------------------------------------------------------------------

# The real challenge

This covers the very basic `git` operations.

You can now collaborate on a single codebase.

But collaborating *effectively* is not easy.

--------------------------------------------------------------------------------

# GitLab

The university provides a repository hosting service, GitLab:

* Repository
* Issue tracker
* Wiki
* Useful graphical interface

Many complex, yet common, operations can be done through the GitLab GUI.

--------------------------------------------------------------------------------

# [Gitlab](http://git.science.uu.nl)

--------------------------------------------------------------------------------

# Branching

Git makes it *very easy* to work on different versions of your software.

Use branches to isolate different all the stories being developed in an iteration.

Create one branch per story at the beginning of the iteration.

Merge each branch back to master at the end of the iteration.

--------------------------------------------------------------------------------

# Golden rules

1. The master branch may only contain code that is tested, reviewed and ready to be released.

1. Only commit code that compiles, even in experimental branches.

1. No branch lives more than three iterations
(the master branch excluded).

1. Create pull requests for every new branch. Only merge your changes if everyone is happy.

--------------------------------------------------------------------------------

![fit inline](img/04-andy.png)

^ Don't be like Andy

--------------------------------------------------------------------------------

# Working with merge requests

Create branch with your feature new feature
```
git checkout -b new_feature
...
git commit -am "My feature is ready"
git push origin new_feature
```

Create a merge request from this commit.

Members of your team can review the code & merge it with main.

--------------------------------------------------------------------------------

# [Merge requests demo](https://www.youtube.com/watch?v=raXvuwet78M)

--------------------------------------------------------------------------------

# Working with merge requests

One or two people responsible for merging branches with main.

Before a branch is merged with the main branch, there should be a code review.

Use the forum for discussion if there are issues with the
implementation, execution, tests, etc.

--------------------------------------------------------------------------------

# Code reviews

* Does the code work?

* Is it easy to understand and clearly structured?

* Does it adhere to coding conventions?

* Are there comments?

* Are there any open TODOs or obviously unfinished methods?

* Is there an automated test for this feature/bug?

--------------------------------------------------------------------------------

# Code reviews

If the answer to any of these questions is no – don't merge.

Merging with master exposes your work to the rest of the team.

Breaking their work means wasting *everybody's* time.

*Investing in quality assurance now will be invaluable later.*

--------------------------------------------------------------------------------

# Writing good comments

* Don't explain obvious details, instead focus on the key ideas.

    - Bad: `\\This for loop iterates over the array`
    - Better: `\\This method computes the sum of a non-empty array storing positive integers`

* Document invariants, assumptions, unusual behaviour and corner cases.

* Explain the design decisions you made that lead to this code.

--------------------------------------------------------------------------------

# Writing good comments

* The goal is not to explain the micro-details on every line of code...

* ... but rather to help a new reader understand the big picture of what is going on.

--------------------------------------------------------------------------------

# Further reading

* [Lessons in software development](http://henrikwarne.com/2015/04/16/lessons-learned-in-software-development/)

* [Pro-git](http://git-scm.com/book/en/v2)

* [A tutorial on merge requests and issues in Gitlab](https://youtu.be/raXvuwet78M)

* [GitLab introduction videos on Youtube](https://www.youtube.com/channel/UCnMGQ8QHMAnVIsI3xJrihhg)

--------------------------------------------------------------------------------
