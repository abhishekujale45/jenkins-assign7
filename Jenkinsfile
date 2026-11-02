pipeline {
 agent any
 steps {
		
		stage("clone the code")
		{
			echo "Cloning the code"
			sh ""
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
