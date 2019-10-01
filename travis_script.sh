#!/bin/bash
set -e

declare -a CODELAB_NAMES=(
    "dart_codelab" \
    "flutter_codelab" \
)

for CODELAB_NAME in "${CODELAB_NAMES[@]}"
do
    echo "*** Testing ${CODELAB_NAME} ***"

    pushd "${CODELAB_NAME}/tool"

    ./run_exercise_tests.sh

    popd
done
