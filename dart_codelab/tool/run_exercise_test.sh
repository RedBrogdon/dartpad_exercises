#!/bin/bash
set -e

# Backs up one directory at a time, looking for one called "flutter".
function getFlutterPath() {
    local path=".."
    local counter=0

    while [[ "${counter}" -lt 10 ]]; do
        [ -d "${path}/flutter" ] && echo "${path}/flutter" && return 0
        let counter++
        path="${path}/.."
    done
}

LOCAL_SDK_PATH=$(getFlutterPath)

if [ -z "${LOCAL_SDK_PATH}" ]
then 
    echo "Failed to find Flutter SDK!."
    exit 1
fi

declare -a  EXERCISE_NAMES=(
    "01_dart_exercise" \
)

for EXERCISE_NAME in "${EXERCISE_NAMES[@]}"
do
    echo "Testing ${EXERCISE_NAME}"

    cat "../${EXERCISE_NAME}/solution.dart" "../${EXERCISE_NAME}/test.dart" > combined.dart

    echo '

    bool lastSuccess;
    List<String> lastMessages;

    void _result(bool success, [List<String> messages]) {
      lastSuccess = success;
      lastMessages = messages;
    }

    ' >> combined.dart

    "${LOCAL_SDK_PATH}/bin/cache/dart-sdk/bin/dart" exercise_test.dart 

done