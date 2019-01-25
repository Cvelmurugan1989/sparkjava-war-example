node {
   def mvnHome
   stage('Preparation') { // for display purposes
      // Get some code from a GitHub repository
      git 'https://github.com/Cvelmurugan1989/sparkjava-war-example.git'
      // Get the Maven tool.
      // ** NOTE: This 'M3' Maven tool must be configured
      // **       in the global configuration.           
      mvnHome = tool 'Maven3'
   }
   stage('Build') {
      withEnv(["JAVA_HOME=${ tool 'JDK1.8' }", "PATH+MAVEN=${tool 'Maven3'}/bin:${env.JAVA_HOME}/bin"]) {
    if (isUnix()) {
         sh "'${mvnHome}/bin/mvn' -Dmaven.test.failure.ignore clean package"
      } else {
         bat(/"${mvnHome}\bin\mvn" -Dmaven.test.failure.ignore clean package/)
      }
       }
      }
   stage('DEploy') {
      echo "Starting Deployment"
      //bat 'cd D:\\Vel\\apache-tomcat-8.5.37\\bin'
      bat 'D:\\Vel\\apache-tomcat-8.5.37\\bin\\shutdown.bat'
      bat 'copy "C:\\Program Files (x86)\\Jenkins\\workspace\\SparkJava_Pipeline\\target\\sparkjava-hello-world-1.0.war" D:\\Vel\\apache-tomcat-8.5.37\\webapps'
      bat 'D:\\Vel\\apache-tomcat-8.5.37\\bin\\startup.bat'
    }
}
