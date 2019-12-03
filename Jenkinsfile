node {

    stage ('Checkout') {
        checkout scm
    }

    stage ('Test') {
        sh 'chmod u+x ./ci/run-test.sh'
        sh './ci/run-test.sh'
    }

    stage ('Build') {
        sh 'chmod u+x ./ci/build.sh'
        sh './ci/build.sh'
    }
}
