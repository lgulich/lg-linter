# LG-Linter
![Upload Python Package](https://github.com/lgulich/lg-linter/workflows/Upload%20Python%20Package/badge.svg?branch=master)

LG-Linter is a simple linter and formatter for bash, python and c++. Additionally we provide git hooks such that the linter can automatically be run before every commit.

Tested on 
* Ubuntu 18.04

## Installation
Make sure you have `pip3`, `clang-format` and `shellcheck` installed. If not you can install them with
```sh
sudo apt update
sudo apt install -y python3-pip clang-format shellcheck
```

We recommend using `shellcheck>=v0.7.0`. Since this is not yet available in the default apt repositories on Ubuntu18.04 you can download it as follows:
```sh
sudo apt-get remove shellcheck
wget -qO- "https://github.com/koalaman/shellcheck/releases/download/stable/shellcheck-stable.linux.x86_64.tar.xz" | tar -xJv
sudo cp "shellcheck-stable/shellcheck" /usr/bin/
rm -rf shellcheck-stable
```

Next install the linter with
```sh
pip3 install lg-linter
```
**Note:** This will install / overwrite the linter config files in your home directory.

## How to use
Inside your git repo run
```sh
init_lg_linter
```
The linter is now active and will be run before every commit.
If you want to remove the linter from your repo use
```
deinit_lg_linter
```

**Pro Tip:** If the linter complains about stuff which clearly is wrong you can override him with
```
git commit --no-verify
```
Use with care, with great power comes great responsibility!

## Contact
For feature requests or bug reports please drop an issue at https://github.com/lgulich/lg-linter.
