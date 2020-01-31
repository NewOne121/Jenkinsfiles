#!/bin/bash
JENKINS_URL=IP_ADDRESS:8084
JENKINS_FILE=${1:-universal.groovy}
echo Validating ${JENKINS_FILE} via ${JENKINS_URL}
curl --user dev:glogink1 -X POST -F "jenkinsfile=<$JENKINS_FILE" http://$JENKINS_URL/pipeline-model-converter/validate
