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
sed -i s/"PROJECT=karaoke"/"PROJECT=${PROJECT_NAME}"/ ${BASE_DIR}/contrib/activate-dev-env
echo "" > README.md
rm -rf .git
rm prepare.sh
