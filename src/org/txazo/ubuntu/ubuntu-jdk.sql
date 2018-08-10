1. 下载JDK
wget --no-cookie --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F" http://download.oracle.com/otn-pub/java/jdk/7u40-b43/jdk-7u40-linux-x64.tar.gz


2. 安装JDK
cd /usr/lib
mkdir jvm
tar zxvf /soft/packages/jdk-7u25-linux-x64.tar.gz -C /usr/lib/jvm

3. 配置JDK
vi /etc/profile

export JAVA_HOME=/usr/lib/jvm/jdk1.7.0_25
export PATH=$JAVA_HOME/bin:$PATH
export CLASSPATH=.:$JAVA_HOME/lib:$JAVA_HOME/jre/lib

4. 配置JDK默认版本
update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk1.7.0_25/bin/java 300
update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/jdk1.7.0_25/bin/javac 300

update-alternatives --config java
update-alternatives --config javac

5. 测试JDK
java -version

vi HelloWorld.java

public class HelloWorld {

    public static void main(String[] args) {
	    System.out.println("HelloWorld");
	}

}

javac HelloWorld.java
java HelloWorld