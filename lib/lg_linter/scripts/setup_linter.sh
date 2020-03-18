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
