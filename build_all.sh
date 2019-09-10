#! /usr/bin/env bash
set -o nounset
set -o errexit

readonly SCRIPT_DIR=$(cd $(dirname ${BASH_SOURCE[0]}); pwd)

readonly SOURCE_DIR=${SCRIPT_DIR}/src
readonly OUTPUT_DIR=${SCRIPT_DIR}/output

mkdir -p ${OUTPUT_DIR}

for _dir in $(find ${SOURCE_DIR}/* -maxdepth 1 -type d); do
    dir_name=$(basename ${_dir})

    project_source_dir="${SOURCE_DIR}/${dir_name}"
    project_output_dir="${OUTPUT_DIR}/${dir_name}"
    mkdir -p ${project_output_dir}
    cmake -G Ninja -B ${project_output_dir} -S ${project_source_dir} -DCMAKE_INSTALL_PREFIX=${project_output_dir}/install
    cmake --build ${project_output_dir}
    cmake --build ${project_output_dir} --target install
done
