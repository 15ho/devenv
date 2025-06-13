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

## GitFlow ToolKit
install [gitflow-toolkit](https://github.com/mritd/gitflow-toolkit)
```shell
go install github.com/mritd/gitflow-toolkit/v2@latest

gitflow-toolkit install
```

### Comands

| cmd                 | desc                                                      |
|---------------------|-----------------------------------------------------------|
| `git ci`            | Enter commit message interactively                        |
| `git ps`            | Push the current branch to the remote                     |
| `git feat NAME`     | Switch a new branch from the current branch (`feat/NAME`) |
| `git fix NAME`      | `git switch -c fix/NAME`                                  |
| `git hotfix NAME`   | `git switch -c hotfix/NAME`                               |
| `git docs NAME`     | `git switch -c docs/NAME`                                 |
| `git style NAME`    | `git switch -c style/NAME`                                |
| `git refactor NAME` | `git switch -c refactor/NAME`                             |
| `git chore NAME`    | `git switch -c chore/NAME`                                |
| `git perf NAME`     | `git switch -c perf/NAME`                                 |
| `git style NAME`    | `git switch -c style/NAME`                                |

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