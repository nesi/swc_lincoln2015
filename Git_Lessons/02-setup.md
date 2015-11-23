---
layout: page
title: Version Control with Git
subtitle: Setting Up Git
minutes: 5
---
> ## Learning Objectives {.objectives}
>
> *  Configure `git` the first time it is used on a computer.
> *  Understand the meaning of the `--global` configuration flag.

Git commands are written in this form: `git verb` followed by options, where `verb` is what we actually want it to do.

When we use Git on a new computer for the first time, we need to configure a few things.
Here's how Dracula configured Git on his new laptop:

~~~ {.bash}
$ git config --global user.name "Vlad Dracula"
$ git config --global user.email "vlad@tran.sylvan.ia"
$ git config --global color.ui "auto"
~~~

(Please use your own name and email address instead of Dracula's, or else ...)

In this case, we're telling Git:

*   our name and email address,
*   to colorize output,

The commands above only need to be run once: the flag `--global` tells Git
to use the settings for every local Git repository, in your user account, on this computer.

We also might want to set our favorite text editor, by choosing a command from this table:

| Editor             | Configuration command                            |
|:-------------------|:-------------------------------------------------|
| nano               | `$ git config --global core.editor "nano -w"`    |
| Text Wrangler      | `$ git config --global core.editor "edit -w"`    |
| Sublime Text (Mac) | `$ git config --global core.editor "subl -n -w"` |
| Sublime Text (Win) | `$ git config --global core.editor "'c:/program files/sublime text 2/sublime_text.exe' -w"` |
| Notepad++ (Win)    | `$ git config --global core.editor "'c:/program files (x86)/Notepad++/notepad++.exe' -multiInst -notabbar -nosession -noPlugin"`|
| Kate (Linux)       | `$ git config --global core.editor "kate"`       |
| Gedit (Linux)      | `$ git config --global core.editor "gedit -s"`   |

You can check your settings at any time:

~~~ {.bash}
$ git config --list
~~~

You can change your configuration as many times as you want: just use the
same commands to choose another editor or update your email address.

> ## Proxy {.callout}
>
> In some networks you need to use a
> [proxy](https://en.wikipedia.org/wiki/Proxy_server). If this is the case, you
> may also need to tell Git about the proxy:
>
> ~~~ {.bash}
> $ git config --global http.proxy your-proxy-url
> $ git config --global https.proxy your-proxy-url
> ~~~
>
> To disable the proxy, use
>
> ~~~ {.bash}
> $ git config --global --unset http.proxy
> $ git config --global --unset https.proxy
> ~~~

Next: [Creating a Repository](03-create.html)
