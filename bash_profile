# set protobuf
export PROTOBUF="/user/local/protobuf"

# Enable the go modules feature
export GOPROXY=https://goproxy.bj.bcebos.com
export GONOSUMDB=\*
export GO111MODULE=off
export GOPATH=$HOME/gopath

# set env
export PATH=$PROTOBUF/bin:$PATH

# alias command
alias gll="git log --graph --abbrev-commit --decorate --all --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(dim white) - %an%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n %C(white)%s%C(reset)'"

# 配置自动登录开发机
alias expect='export LC_CTYPE=en_US && expect'
alias relay='expect $HOME/.relay.expect username password'
