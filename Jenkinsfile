pipeline {
    agent any
	 environment {
		 M2_HOME="/home/centos/apache-maven-3.1.1"
		 MAVEN_HOME="/home/centos/apache-maven-3.1.1"
		 PATH="$PATH:$M2_HOME/bin"
  }
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
			     sh  "mvn --version"
			    
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
