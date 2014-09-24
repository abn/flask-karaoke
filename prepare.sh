#!/usr/bin/env bash

BASE_DIR=$(dirname $0)

function error()
{
    echo >&2 "ERROR: $1"
    exit 1
}

if [ ! -d ${BASE} ]; then
    error "Could not determine base directory, inferred '${BASE_DIR}'"
fi

if [ $# -ne 1 ]; then
    error "Project name is required"
fi

PROJECT_NAME=$1

mv ${BASE_DIR}/karaoke "${BASE_DIR}/${PROJECT_NAME}"
sed -i s/"PROJECT=karaoke"/"PROJECT=${PROJECT_NAME}"/ \
    ${BASE_DIR}/contrib/activate-dev-env
sed -i s/"from karaoke"/"from $PROJECT_NAME"/ ${BASE_DIR}/run.py
echo "" > ${BASE_DIR}/README.md
rm -rf ${BASE_DIR}/.git
rm ${BASE_DIR}/prepare.sh
