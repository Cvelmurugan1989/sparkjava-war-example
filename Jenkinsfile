pipeline {
stages{
stage('checkout'){
checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/Cvelmurugan1989/sparkjava-war-example']]])
}
}
}