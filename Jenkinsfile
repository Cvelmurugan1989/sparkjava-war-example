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
      echo "Starting Deployment"
      bat 'copy C:\\Program Files%20(x86)\\Jenkins\\workspace\\SparkJava_Pipeline\\target\\sparkjava-hello-world-1.0.war D:\\Vel\\apache-tomcat-8.5.37\\webapps'
}
   //stage("DEploy') {   
   //bat 'cp C:\\Program Files (x86)\\Jenkins\\workspace\\SparkJava_Pipeline\\target\\sparkjava-hello-world-1.0.war D:\\Vel\\apache-tomcat-8.5.37\\webapps'
     //    }
}
