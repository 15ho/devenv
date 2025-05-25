# Git

~/.gitconfig
```gitconfig
[pull]
        rebase = false

[includeIf "gitdir:~/workspace/w/"]
    path = ~/.gitconfig-w
[includeIf "gitdir:~/workspace/p/"]
    path = ~/.gitconfig-p
```

~/.gitconfig-w, or ~/.gitconfig-p
```gitconfig
[user]
    name = <work or personal name>
    email = <work or personal email>
```