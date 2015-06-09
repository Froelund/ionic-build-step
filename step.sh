#!/bin/bash

echo "Building ${PLATFORMS}!"

THIS_SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

function fail_if_cmd_error {
	local last_cmd_result=$?
	local err_msg=$1
	if [ ${last_cmd_result} -ne 0 ]; then
		echo " [!] Error description: ${err_msg}"
		echo "     (i) Exit code was: ${last_cmd_result}"
		exit ${last_cmd_result}
	fi
}

bash "${THIS_SCRIPT_DIR}/_setup.sh"
fail_if_cmd_error "Could not install required tools"

ionic platform rm $PLATFORMS &&
ionic platform add $PLATFORMS &&
ionic build $PLATFORMS --release