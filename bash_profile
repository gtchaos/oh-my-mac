# for color
export CLICOLOR=1
export PATH="/usr/local/mysql/bin:/usr/local/sbin:$PATH"

# 设置 JDK 7  
export JAVA_7_HOME=`/usr/libexec/java_home -v 1.7`  
# 设置 JDK 8  
export JAVA_8_HOME=`/usr/libexec/java_home -v 1.8`  
  
#默认JDK 8
export JAVA_HOME=$JAVA_8_HOME  

# 设置protobuf
export PROTOBUF_HOME="/usr/local"

#alias命令动态切换JDK版本  
alias jdk7="export JAVA_HOME=$JAVA_7_HOME"  
alias jdk8="export JAVA_HOME=$JAVA_8_HOME" 

export PATH="$JAVA_HOME/bin:$PATH"

#export M2_HOME="/usr/local/Cellar/maven/3.3.9"
#export M2="$M2_HOME/bin"
#export PATH="$M2:$PATH"
source ~/.bash_aliases

export PATH="/Users/baidu/Library/Application Support/GoodSync:$PATH"

# alias命令
alias tomcat="cd /usr/local/Cellar/tomcat/8.5.3/libexec"
alias cat='pygmentize -O style=monokai -f console256 -g'
