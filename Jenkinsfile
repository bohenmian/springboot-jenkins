node {

    stage ('Checkout') {
        checkout scm
    }

    stage ('Test') {
        sh 'chmod u+x ./ci/run-test.sh'
        sh './ci/run-test.sh'
    }
}
