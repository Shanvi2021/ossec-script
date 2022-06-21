@Library('Shanvi2021-demo')_

pipeline{
  agent any
    stages{
        stage('running script'){
            steps{
              script{
                welcome.run_script("ossec.sh")
              }
            }
        }
    }
}
