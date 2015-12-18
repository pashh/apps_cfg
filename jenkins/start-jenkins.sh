export JAVA_HOME=/opt/mw/java/jdk1.7.0_45
export JENKINS_HOME=/opt/apps/jenkins/jenkins_home

unset ANT_HOME
unset CATALINA_OPTS
unset M2_HOME
unset MAVEN_OPTS

JAVA_OPTS="-Duser.language=en -Djavax.net.ssl.trustStore=/opt/mw/secure/keystore/key_https.jks -Djavax.net.ssl.trustStorePassword=changeit -XX:MaxPermSize=1024m -Xms2048m -Xmx4096m"
WINSTONE_OPTS="--httpPort=-1 --httpsPort=9243 --httpsKeyStore=/opt/mw/secure/keystore/key_https.jks --httpsKeyStorePassword=changeit --ajp13Port=-1 --controlPort=9203 --prefix=/ci-srv --logfile=$JENKINS_HOME/log/jenkins.log"

$JAVA_HOME/bin/java $JAVA_OPTS -jar ./jenkins-wars/jenkins.war $WINSTONE_OPTS --daemon
