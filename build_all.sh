#! /usr/bin/env bash

set -o nounset
set -o errexit

readonly SCRIPT_DIR=$(cd $(dirname ${BASH_SOURCE[0]}); pwd)

readonly SOURCE_DIR=${SCRIPT_DIR}/src
readonly OUTPUT_DIR=${SCRIPT_DIR}/output

mkdir -p ${OUTPUT_DIR}

cmake -G Ninja -B ${OUTPUT_DIR} -S ${SOURCE_DIR} -DCMAKE_INSTALL_PREFIX=${OUTPUT_DIR}/install
cmake --build ${OUTPUT_DIR}
cmake --build ${OUTPUT_DIR} --target install
