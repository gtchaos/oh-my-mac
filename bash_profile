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

# 设置 hive
export HIVE_HOME="/usr/local/hive" 

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

export SCALA_HOME=/usr/local/Cellar/scala/2.12.3
export SPARK_HOME=/usr/local/spark 

export PATH=$PATH:$JAVA_HOME/bin:$HADOOP_HOME/bin:$HADOOP_HOME/sbin
export PATH=$PROTOBUF/bin:$HIVE_HOME/bin:$SCALA_HOME/bin:$SPARK_HOME/bin:$PATH

source ~/.bash_aliases

# alias命令
alias tomcat="cd /usr/local/Cellar/tomcat/8.5.3/libexec"
#alias cat='pygmentize -O style=monokai -f console256 -g'

alias hadoop_conf="cd /usr/local/Cellar/hadoop/2.8.0/libexec/etc/hadoop"
