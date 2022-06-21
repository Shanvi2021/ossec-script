@Library('Shanvi2021-demo')_

pipeline{
  agent any
    stages{
        stage('demo'){
            steps{
              script{
                welcome.run_script("ossec.sh")
              }
            }
        }
    }
}
