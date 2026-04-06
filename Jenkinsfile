// Jenkins pipeline för test av www.kjell.com med selenium
pipeline {
    agent any
    stages {

        stage ('QA-Automation-Selenium-CI - Chrome tests') {
            steps{
                catchError(buildResult: 'FAILURE', stageResult: 'FAILURE'){
                    bat encoding: 'UTF-8', script: """
                    chcp 65001
                    pytest -s --tb=short --log-cli-level=INFO --browser=chrome ".\\Tests\\test_Kjell.py"
                    @echo Chrome tests done!
                     """
                }
            }
        }

        stage ('QA-Automation-Selenium-CI - Firefox tests') {
            steps{
                catchError(buildResult: 'FAILURE', stageResult: 'FAILURE'){
                    bat encoding: 'UTF-8', script: """
                    chcp 65001
                    pytest -s --tb=short --log-cli-level=INFO --browser=firefox ".\\Tests\\test_Kjell.py"
                    @echo Firefox tests done!
                     """
                }
            }
        }

        stage ('QA-Automation-Selenium-CI - Edge tests') {
            steps{
                catchError(buildResult: 'FAILURE', stageResult: 'FAILURE'){
                    bat encoding: 'UTF-8', script: """
                    chcp 65001
                    pytest -s --tb=short --log-cli-level=INFO --browser=edge ".\\Tests\\test_Kjell.py"
                    @echo Edge tests done!
                     """
                }
            }
        }

        stage ('Cleaning Workspace'){
            steps {
                cleanWs()
            }
        }
	}
}
