#!/bin/sh -e

# Install clang-format
if command -v clang-format; then
	sudo apt-get install -y clang-format
fi

# Install cpplint
if command -v cpplint; then
	pip3 install cpplint
fi

# Install yapf
if command -v yapf; then
	pip3 install yapf
fi

# Install pylint
if command -v pylint; then
	sudo apt-get install pylint
fi

# Install shellcheck
if command -v shellcheck; then
	sudo apt-get install -y shellcheck
fi

# Install all config files
SCRIPT_DIR="$(cd -- "$(dirname -- "$0")" && pwd)"
LG_LINTER_DIR="$SCRIPT_DIR"/../

install_if_doesnt_exist() {
	CONFIG_FILE="$1"
	if [ -f ~/"$CONFIG_FILE" ]; then
		cp "$LG_LINTER_DIR"/config/"$CONFIG_FILE" ~/"$CONFIG_FILE"
	fi
}

install_if_does_not_exist '.clang-format'
install_if_does_not_exist '.cpplint-config'
install_if_does_not_exist '.style.yapf'
install_if_does_not_exist '.pylintrc'
install_if_does_not_exist '.shellcheck-config'
