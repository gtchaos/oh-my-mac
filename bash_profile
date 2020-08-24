# for editor
export EDITOR=vim

# for color
export CLICOLOR=1

# set JDK 7  
export JAVA_7_HOME=`/usr/libexec/java_home -v 1.7`  

# set JDK 8  
export JAVA_8_HOME=`/usr/libexec/java_home -v 1.8`  
  
# default JDK 8
export JAVA_HOME=$JAVA_8_HOME  

# alias jdk7 or jdk8
alias jdk7="export JAVA_HOME=$JAVA_7_HOME"  
alias jdk8="export JAVA_HOME=$JAVA_8_HOME" 

#export M2_HOME="/usr/local/Cellar/maven/3.3.9"
#export M2="$M2_HOME/bin"
#export PATH="$M2:$PATH"

# set hadoop
export HADOOP_HOME="/usr/local/Cellar/hadoop/2.8.0"
export HADOOP_EXAMPLE="$HADOOP_HOME/libexec/share/hadoop/mapreduce"
export HIVE_HOME="/usr/local/hive" 
export SCALA_HOME=/usr/local/Cellar/scala/2.12.3
export SPARK_HOME=/usr/local/spark

# set protobuf
export PROTOBUF="/user/local/protobuf"

# set openssl
export OPENSSL_ROOT_DIR="/usr/local/Cellar/openssl/1.0.2j"
export OPENSSL_INCLUDE_DIR="/usr/local/Cellar/openssl/1.0.2j/lib"


# Enable the go modules feature
export GONOPROXY=\*\*.baidu.com\*\*
export GOPROXY=https://goproxy.bj.bcebos.com
export GONOSUMDB=\*
export GO111MODULE=off
export GOPATH=$HOME/gopath

# set env
export PATH=$JAVA_HOME/bin:$HADOOP_HOME/bin:$HADOOP_HOME/sbin:$GOPATH/bin:$PATH
export PATH=$PROTOBUF/bin:$HIVE_HOME/bin:$SCALA_HOME/bin:$SPARK_HOME/bin:$PATH

# alias command
alias gll="git log --graph --abbrev-commit --decorate --all --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(dim white) - %an%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n %C(white)%s%C(reset)'"
