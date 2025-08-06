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

### Commit Message

```go
const (
	feat     string = "feat"
	fix      string = "fix"
	docs     string = "docs"
	style    string = "style"
	refactor string = "refactor"
	test     string = "test"
	chore    string = "chore"
	perf     string = "perf"
	hotfix   string = "hotfix"
)

const (
	featDesc     string = "FEAT (Introducing new features)"
	fixDesc      string = "FIX (Bug fix)"
	docsDesc     string = "DOCS (Writing docs)"
	styleDesc    string = "STYLE (Improving structure/format of the code)"
	refactorDesc string = "REFACTOR (Refactoring code)"
	testDesc     string = "TEST (When adding missing tests)"
	choreDesc    string = "CHORE (Changing CI/CD)"
	perfDesc     string = "PERF (Improving performance)"
	hotfixDesc   string = "HOTFIX (Bug fix urgently)"
)
```