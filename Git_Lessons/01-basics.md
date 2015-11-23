---
layout: page
title: Version Control with Git
subtitle: Automated Version Control
minutes: 5
---
> ## Learning Objectives {.objectives}
>
> *   Understand the benefits of an automated version control system.
> *   Understand the basics of how Git works.

We'll start by exploring how version control can be used to keep track of what one person did and when.

Version control process starts with a base version of the document and then save just the changes you made
at each step of the way. You can think of it as a tape: if you rewind the tape and start at the base document,
then you can play back each change and end up with your latest version.

![Changes are saved sequentially](fig/play-changes.svg)

Once you think of changes as separate from the document itself, you can then think about "playing back" 
different sets of changes onto the base document and getting different versions of the document. For example,
two users can make independent sets of changes based on the same document.

![Different versions can be saved](fig/versions.svg)

If there aren't conflicts, you can even try to play two sets of changes onto the same base document.

![Multiple versions can be merged](fig/merge.svg)

A version control system is a tool that keeps track of these changes for us and
helps us version and merge our files. It allows you to
decide which changes make up the next version, called a
[commit](reference.html#commit), and keeps useful metadata about them. The
complete history of commits for a particular project and their metadata make up
a [repository](reference.html#repository). Repositories can be kept in sync
across different computers facilitating collaboration among different people.

> ## The long history of version control systems {.callout}
>
> Automated version control systems are nothing new. Tools like RCS, CVS, or
> Subversion are considered now legacy systems, offering more limited
> capabilities than modern tools, such as Git and
> [Mercurial](http://swcarpentry.github.io/hg-novice/). In particular, the
> latter are *distributed*, meaning that they don't need a centralised server
> to host the repository.

Next: [Setting Up Git](02-setup.html)
