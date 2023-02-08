FROM centos:7
MAINTAINER shenzhijie
WORKDIR /mydocker/jdk
RUN mkdir /mydocker/jdk/jdk8
ADD jdk-8u211-linux-x64.tar.gz /mydocker/jdk/jdk8
ENV JAVA_HOME /mydocker/jdk/jdk8/jdk1.8.0_211
ENV JRE_HOME $JAVA_HOME/jre
ENV CLASSPATH $JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar:$JAVA_HOME/lib:$CLASSPATH
ENV PATH $JAVA_HOME/bin:$PATH
CMD ["/bin/bash"]
