+++
title = "Git Snippets"
weight = 20
+++


### Checkout Pull Request

This seems like it should be easier, but here's a way to checkout a pull request, usually from someone else's repository.

```
git fetch origin pull/64/head:pr64
git switch pr64
```

### Commit Date

You can alter the time of commits, so don't believe everything you see. You can use this to fill gaps in your commit streaks, or draw pretty designs.


```
GIT_AUTHOR_DATE='Fri Jul 26 19:32:10 2013 -0400' GIT_COMMITTER_DATE='Fri Jul 26 19:32:10 2013 -0400' git commit
```

### Delete Last Commit

Here's two different ways to delete a commit

1. Reset local repository to parent of HEAD, (^)

```
git reset HEAD^ --hard
git push origin -f
```

If you want to go back to a specific hash:

```
git reset HASH --hard
git push origin -f
```

(or)

2. Force push (+) to "origin" the parent of HASH (^) to branch master
    easy to switch branch and where you are pushing

```
git push origin +HASH^:master
```

### Reset Local to Remote

Give up and try again, reset your local branch to remote.

Pull in the last changes, and then do a hard reset to that branch.

```
git fetch REMOTE
git reset --hard REMOTE/BRANCH
```

If your remote is called `origin` and your branch `trunk` you would use:

```
git fetch origin
git reset --hard origin/trunk
```


### Squash Commits

You can squash commits using rebase and root flag:

```
git rebase -i --root master
```

### Update Fork from Upstream

An example updating a fork from the latest master branch.

1. Pull in latest changes from upstream.

```
git fetch upstream
```

2. Switch to master branch on fork.

```bash
git checkout master
```

3. Bring fork master up to date

```
git pull --rebase upstream master
```

4. Push changes back up to fork remote

```
git push fork master
```

5. (optional) Rebase a branch to a tag

```
git checkout my-branch
git rebase v1.9.1
```
