pipeline {
    agent any
	 
    stages {
        stage('CodeCheckOut') {
            steps {
                script {
                    checkout scm
			
		}
	    }
	}
	    stage('Build') {
		    steps {
			    script {	 
				 
                    checkout scm
		    try {
			    echo 'get maven version'
			 sh " wget http://www-us.apache.org/dist/maven/maven-3/3.1.1/binaries/apache-maven-3.1.1-bin.zip"
			sh "unzip -o apache-maven-3.1.1-bin.zip"
			sh "M2_HOME=/home/centos/apache-maven-3.1.1"
			sh "MAVEN_HOME=/home/centos/apache-maven-3.1.1"
			
			sh "PATH=$PATH:$M2_HOME/bin"
			    
                        sh "mvn clean install -U -Dmaven.test.skip=true"
                        currentBuild.result = 'SUCCESS'
                    } catch (Exception err) {
                        currentBuild.result = 'FAILURE'
                        sh "exit 1"
                    }
                }
            }
        }
    }   
}
