pipeline {
 agent any
 steps {
		
		stage("clone the code")
		{
			echo "Cloning the code"
			sh " git clone https://github.com/abhishekujale45/jenkins-assign7"
			sh "cd jenkins-assign7"
		}
		
		stage("Compile the code")
		{
			echo "Compiling the code"
			sh "javac Main.java"
		}
		
		stage("running the code")
		{
			echo "Output of the code is "
			sh "java Main.java"
		}
	
	}
}
