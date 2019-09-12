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

"${LOCAL_SDK_PATH}/bin/cache/dart-sdk/bin/pub" upgrade

declare -a  EXERCISE_NAMES=(
    "01_dart_exercise" \
)

for EXERCISE_NAME in "${EXERCISE_NAMES[@]}"
do
    echo "Testing ${EXERCISE_NAME}"

    cat "../${EXERCISE_NAME}/solution.dart" "../${EXERCISE_NAME}/test.dart" > combined.dart

    # DartPad injexts a method called `_result` into the combined user/test code to give it a
    # way to report results out it the DartPad UI. This code is injected here so that:
    #
    # * The `_result` function is present (without it the code would fail to compile).
    # * The outer test method (in `exercise_test.dart`) can be used to verify that the combined
    #   user/test code works as it should by checking the output of this `_result` function.
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
