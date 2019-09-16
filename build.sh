#! /usr/bin/env bash

set -o nounset
set -o errexit

readonly SCRIPT_DIR=$(cd $(dirname ${BASH_SOURCE[0]}); pwd)

readonly SOURCE_DIR=${SCRIPT_DIR}/src
readonly OUTPUT_DIR=${SCRIPT_DIR}/output

mkdir -p ${OUTPUT_DIR}
cd ${OUTPUT_DIR}

# 'cmake -S <source-dir> -B <build-dir>' is not yet supported in cmake used in the standard Ubuntu 18.04 (v3.10) or on travis' bionic (v3.12).
# That has been supported since cmake 3.13. 
cmake -G Ninja -DCMAKE_INSTALL_PREFIX=${OUTPUT_DIR}/install ${SOURCE_DIR}
cmake --build ${OUTPUT_DIR}
cmake --build ${OUTPUT_DIR} --target install
