# proxy

ubuntu with wsl2

powershell(admin)
```powershell
New-NetFirewallRule -DisplayName "WSL" -Direction Inbound  -InterfaceAlias "vEthernet (WSL)"  -Action Allow
```

~/.zshrc
```shell
# get host machine ip
## vEthernet (WSL)
## grep -m 1 nameserver /etc/resolv.conf | awk '{print $2}'
PROXYURL="socks5://"$(grep -m 1 nameserver /etc/resolv.conf | awk '{print $2}')":17890"
alias proxyaddr='echo $PROXYURL'
alias upproxy='export HTTP_PROXY="$PROXYURL" && export HTTPS_PROXY="$PROXYURL"'
alias stopproxy='unset HTTP_PROXY && unset HTTPS_PROXY'
```