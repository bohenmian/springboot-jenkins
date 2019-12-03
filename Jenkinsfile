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

    withEnv ([
        'REPOSITORY=jenkins',
        'SERVICE=springboot-jenkins',
        'HOST=bohenmian'
    ]) {

        stage ('GenImage') {
            sh 'chmod u+x ./ci/gen-image.sh'
            sh './ci/gen-image.sh'
        }

        stage ('Deploy') {
            sh 'chmod u+x ./ci/deploy.sh'
            sh './ci/deploy.sh'
        }
    }
}
