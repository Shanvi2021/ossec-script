@Library('Shanvi2021-demo')_

pipeline{
  agent any
    stages{
        stage('demo'){
            steps{
              script{
                welcome.call("ossec.sh")
              }
            }
        }
    }
}
