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

Problem: git clone by ssh
```
Connection closed by xxx.xxx.xxx.xxx port 22
fatal: Could not read from remote repository.

Please make sure you have the correct access rights
and the repository exists.
```
> solved: [~/.ssh/config](https://docs.github.com/en/authentication/troubleshooting-ssh/using-ssh-over-the-https-port)
```
Host github.com
    HostName ssh.github.com
    Port 443
```