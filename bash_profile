# Enable the go modules feature
export CGO_ENABLED=0
export GOOS=darwin
export GO111MODULE=on
export GOPROXY=https://goproxy.cn
export GOPATH=$HOME/gopath
export PATH=$GOPATH/bin:$PATH

export EDITOR="code --wait"

# alias command
alias gll="git log --graph --abbrev-commit --decorate --all --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(dim white) - %an%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n %C(white)%s%C(reset)'"
alias gst="git status"
