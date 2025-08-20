# Visual Studio Code

## Settings

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
	"workbench.editor.empty.hint": "hidden",
	"workbench.startupEditor": "none",
	"go.testFlags": [
		"-count=1",
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
	],
	"makefile.configureOnOpen": true,
	"Lingma.cloudModelAutoTriggerGenerateLength": "long",
	"Lingma.cloudModelManualTriggerGenerateLength": "long",
	"workbench.iconTheme": "material-icon-theme",
	"gitlens.views.commitDetails.files.layout": "list",
	"update.showReleaseNotes": false,
	"remote.autoForwardPortsSource": "hybrid",
	"editor.tabSize": 2,
	"editor.detectIndentation": false,
	"http.systemCertificates": false
}
```

settings.json (WSL)
```json
{
	// protobuf deps: go to definition
	"tooltitude.pb.includes": [
			"<deps protos directory path. ex./home/xxx/.include>"
	],
	"editor.formatOnSave": true,
	"editor.tabSize": 2,
	"editor.insertSpaces": false
}
```

## Keybindings

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


## Extensions

Windows
```powershell
code --list-extensions > vscode-extensions-win.txt
```

WSL Ubuntu
```shell
# export extension list
rm vscode-extensions-wsl.txt
code --list-extensions > vscode-extensions-wsl.txt

# install extensions
cat vscode-extensions.txt | xargs -L 1 code --install-extension
```

Problem: rust-analyzer caused wsl2 to disconnect
```toml
# windows: c:/Users/<your username>/.wslconf
## more  info: https://learn.microsoft.com/en-us/windows/wsl/wsl-config#wslconfig
[wsl2]
memory=12GB # default: windows memory's 50%
processors=12 # default: same as windows processors
swap=8GB #  default: windows memory's 25%
```

## Custom Layout
- move Explorer's `Package Outline` to the right
