# Visual Studio Code

[Comic Mono](https://github.com/dtinth/comic-mono-font)

settings.json (User)
```json
{
    "files.autoSave": "afterDelay",
    "editor.fontFamily": "Comic Mono",
    "terminal.integrated.fontFamily": "Comic Mono",
    "editor.fontSize": 15,
    "terminal.integrated.fontSize": 15,
    "go.toolsManagement.autoUpdate": true,
    "http.noProxy": [
        "socks5://<host:port>"
    ],
    "workbench.editor.empty.hint": "hidden",
    "go.addTags": {
        "tags": "json",
        "options": "",
        "promptForTags": false,
        "transform": "snakecase",
        "template": ""
    },
    "go.testFlags": [
        "-v"
    ],
    "todo-tree.general.tags": [
        "BUG",
        "HACK",
        "FIXME",
        "TODO",
        "XXX",
        "[ ]",
        "[x]",
        "NOTE"
    ]
}
```

settings.json (WSL)
```json
{
    // protobuf deps: go to definition
    "tooltitude.pb.includes": [
        "<deps protos directory path. ex./home/xxx/.include>"
    ]
}
```

keybindings.json
```json
// Place your key bindings in this file to override the defaults
[
    {
        "key": "ctrl+d",
        "command": "editor.action.deleteLines",
        "when": "textInputFocus && !editorReadonly"
    },
    {
        "key": "ctrl+shift+k",
        "command": "-editor.action.deleteLines",
        "when": "textInputFocus && !editorReadonly"
    }
]

// --- Common Shortcut Keys ---
// ctrl + .         // quick fix
// F1               // show all commands
// ctrl + enter     // insert below line
// ctrl + f         // find
// ctrl + h         // replace
// ctrl + shift + f // search: find
// ctrl + shift + h // search: replace
// alt + ←          // go back
// alt + →          // go forward
// ctrl + p         // go to file...(workbench.action.quickOpen)

// Reveal in Explorer View // go to file location
```

Problem: golang fill struct (quick fix)
> keyboard shortcuts(ctrl + .) not work
> reason: sogou input binding keyboard shortcuts


extensions
```shell
# export extension list
code --list-extensions > vscode-extensions.txt

# install extensions
cat vscode-extensions.txt | xargs -L 1 code --install-extension
```