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
			    script{
				     checkout scm
		    try {
			    
			    def mvnHome = tool 'MAVEN_3.1'
			 //   echo 'get maven version'
		//	 sh " wget http://www-us.apache.org/dist/maven/maven-3/3.1.1/binaries/apache-maven-3.1.1-bin.zip"
		//	sh "unzip -o apache-maven-3.1.1-bin.zip"
		//	    sh "pwd"
		//	sh "ls -l"
			   
			//	  env.M2_HOME="\$(pwd)/apache-maven-3.1.1"
			//	   env.MAVEN_HOME="\$(pwd)/apache-maven-3.1.1"
			//            env.PATH="$PATH:$M2_HOME/bin"
			//    sh "echo $M2_HOME"
			    
			//    sh "ls -l \$(pwd)/apache-maven-3.1.1/bin"
			    
			//    sh ".\$(pwd)/apache-maven-3.1.1/bin/mvn --version"
			    
                        sh "mvn clean install"
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
