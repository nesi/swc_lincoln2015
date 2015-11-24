---
layout: page
title: Version Control with Git
subtitle: Remotes in GitHub
minutes: 30
---
> ## Learning Objectives {.objectives}
>
> *   Explain what remote repositories are and why they are useful.
> *   Clone a remote repository.
> *   Push to or pull from a remote repository.

Version control really comes into its own
when we begin to collaborate with other people.
We already have most of the machinery we need to do this;
the only thing missing is to copy changes from one repository to another.

> ## Local vs. Remote Repositories in Git {.callout}
> ![Relationship between local and remote repositories](fig/git-remote-repos.png)

Systems like Git allow us to move work between any two repositories.
In practice, though, it's easiest to use one copy as a central hub,
and to keep it on the web rather than on someone's laptop.
Most programmers use hosting services like
[GitHub](http://github.com),
[BitBucket](http://bitbucket.org) or
[GitLab](http://gitlab.com/)
to hold those master copies;
we'll explore the pros and cons of this in the final section of this lesson.

Let's start by sharing the changes we've made to our current project with the world.
Log in to GitHub,
then click on the icon in the top right corner to create a new repository:

![Creating a Repository on GitHub (Step 1)](fig/github-create-repo-01.png)

Name your repository "planets" and then click "Create Repository":

![Creating a Repository on GitHub (Step 2)](fig/github-create-repo-02.png)

As soon as the repository is created,
GitHub displays a page with a URL and some information on how to configure your local repository:

![Creating a Repository on GitHub (Step 3)](fig/github-create-repo-03.png)

Copy the repository URL from the browser into the copy/paste buffer, go to the local `planets` repository,
and run this command:

~~~ {.bash}
$ git remote add origin https://github.com/<your-github-user-name>/planets.git
~~~

We can check that the command has worked by running `git remote -v`:

~~~ {.bash}
$ git remote -v
~~~
~~~ {.output}
origin   https://github.com/<your-github-user-name>/planets.git (push)
origin   https://github.com/<your-github-user-name>/planets.git (fetch)
~~~

The name `origin` is a local nickname for your remote repository:
we could use something else if we wanted to,
but `origin` is by far the most common choice.

Once the nickname `origin` is set up,
this command will push the changes from our local repository
to the repository on GitHub:

~~~ {.bash}
$ git push origin master
~~~
~~~ {.output}
Counting objects: 9, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (6/6), done.
Writing objects: 100% (9/9), 821 bytes, done.
Total 9 (delta 2), reused 0 (delta 0)
To https://github.com/vlad/planets
 * [new branch]      master -> master
Branch master set up to track remote branch master from origin.
~~~

> ## Proxy {.callout}
>
> If the network you are connected to uses a proxy there is an chance that your last
> command failed with "Could not resolve hostname" as the error message. To
> solve this issue you need to tell Git about the proxy:
>
> ~~~ {.bash}
> $ git config --global http.proxy http://user:password@proxy.url
> $ git config --global https.proxy http://user:password@proxy.url
> ~~~
>
> When you connect to another network that doesn't use a proxy you will need to
> tell Git to disable the proxy using:
>
> ~~~ {.bash}
> $ git config --global --unset http.proxy
> $ git config --global --unset https.proxy
> ~~~

We can pull changes from the remote repository to the local one as well:

~~~ {.bash}
$ git pull origin master
~~~
~~~ {.output}
From https://github.com/vlad/planets
 * branch            master     -> FETCH_HEAD
Already up-to-date.
~~~

Pulling has no effect in this case
because the two repositories are already synchronized.
If someone else had pushed some changes to the repository on GitHub,
though, this command would download them to our local repository.

> ## GitHub Timestamp {.challenge}
>
> Create a remote repository on GitHub.
> Push the contents of your local repository to the remote.
> Make changes to your local repository and push these changes.
> Go to the repo you just created on Github and check the [timestamps](reference.html#timestamp) of the files.
> How does GitHub record times, and why?

Next: [Collaborating](08-collab.html)

