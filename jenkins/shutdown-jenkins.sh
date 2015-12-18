export JAVA_HOME=/opt/mw/java/jdk1.7.0_45
export JENKINS_HOME=/opt/apps/jenkins/jenkins_home

unset ANT_HOME
unset CATALINA_OPTS
unset M2_HOME
unset MAVEN_OPTS

$JAVA_HOME/bin/java -cp $JENKINS_HOME/war/winstone.jar winstone.tools.WinstoneControl shutdown --host=localhost --port=9203
