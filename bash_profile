# for color
export CLICOLOR=1

export PATH="/usr/local/mysql/bin:/Users/baidu/.composer/vendor/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"

# 设置 JDK 7  
export JAVA_7_HOME=`/usr/libexec/java_home -v 1.7`  
# 设置 JDK 8  
export JAVA_8_HOME=`/usr/libexec/java_home -v 1.8`  
  
#默认JDK 8
export JAVA_HOME=$JAVA_8_HOME  

# 设置hadoop
export HADOOP_HOME="/usr/local/Cellar/hadoop/2.8.0"
export HADOOP_EXAMPLE="$HADOOP_HOME/libexec/share/hadoop/mapreduce"

# 设置protobuf
export PROTOBUF="/user/local/protobuf"
# 设置openssl
export OPENSSL_ROOT_DIR="/usr/local/Cellar/openssl/1.0.2j"
export OPENSSL_INCLUDE_DIR="/usr/local/Cellar/openssl/1.0.2j/lib"

#alias命令动态切换JDK版本  
alias jdk7="export JAVA_HOME=$JAVA_7_HOME"  
alias jdk8="export JAVA_HOME=$JAVA_8_HOME" 


#export M2_HOME="/usr/local/Cellar/maven/3.3.9"
#export M2="$M2_HOME/bin"
#export PATH="$M2:$PATH"

export PATH="$PATH:$JAVA_HOME/bin:$HADOOP_HOME/bin:$HADOOP_HOME/sbin"
export PATH=$PROTOBUF/bin:$PATH

source ~/.bash_aliases

# alias命令
alias tomcat="cd /usr/local/Cellar/tomcat/8.5.3/libexec"
#alias cat='pygmentize -O style=monokai -f console256 -g'

alias hadoop_conf="cd /usr/local/Cellar/hadoop/2.8.0/libexec/etc/hadoop"
# 登录到自己的relay，需设置relay用户名 + PIN码
alias relay='expect $HOME/.relay.expect gaomiaomiao 19900624'
# 如：配置自动登录自己开发机
alias gmm='relay gaomiaomiao@cp01-rdqa-dev408-gaomiaomiao.epc.baidu.com'
# 如：配置自动登录其他开发机
alias rddev='relay pay@yq01-fpd-licai-20.epc.baidu.com pay'
alias getlog='relay rd@cq02-licai-web00.cq02'
alias jslog='relay gaomiaomiao@cp01-pay-bng00.cp01.baidu.com'
alias bjyf='relay pay@st01-licai-web00.st01 pay'
alias online='relay pay@st01-licai-web00.st01 pay'
alias db='relay licai@yq01-fpd-licai-22.epc licai'
alias hxtest='relay work@cp01-forum-ky16.cp01.baidu.com'
alias qianmo='relay root@cp01-rd-test01-gmm-1.epc 123!@#qwe'
alias jpaaslog='relay qa@bjyz-fsg-forjpaas-loghouse0.bjyz qa'
