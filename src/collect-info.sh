#!/usr/bin/env sh

SCRIPT_PATH=$(realpath "$0")
SRC_DIR_PATH=$(dirname "$SCRIPT_PATH")
LIB_DIR_PATH="${SRC_DIR_PATH}/lib"

. "${LIB_DIR_PATH}/logging.sh"

main() {
  input_force="${1}"

  bin_installed="false"
  if command -v cloe >/dev/null 2>&1; then
    if [ "${input_force}" = "false" ]; then
      msg="Installation skipped."
      bin_installed="true"
    else
      msg="Executing forced installation."
    fi
    log_info "cloe is found at $(which cloe). ${msg}"
  else
    log_info "cloe is not found. Executing installation."
  fi
  echo "bin-installed=${bin_installed}" >> $GITHUB_OUTPUT

  bin_dir="cloe_$(date +%s)"
  echo "bin-dir=${bin_dir}" >> "$GITHUB_OUTPUT"

  bin_path="$GITHUB_WORKSPACE/${bin_dir}"
  echo "bin-path=${bin_path}" >> "$GITHUB_OUTPUT"
}

main "$@"
