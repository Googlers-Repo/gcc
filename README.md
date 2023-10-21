[termux]: https://github.com/termux/termux-app
[mkshrc]: https://github.com/Magisk-Modules-Alt-Repo/mkshrc
[mmrl]: https://github.com/DerGoogler/MMRL
[mmrlcli]: https://github.com/DerGoogler/MMRL-CLI
[nodejs]: https://github.com/Magisk-Modules-Alt-Repo/node
[a_brain]: https://www.google.com/search?q=What+is+a+brain%3F

# GCC Toolchain

GCC Toolchain is usable to build many things, such as native modules for Node.js

## Requirements

- [Systemless Mkshrc][mkshrc]
- [Brain][a_brain]

## Installation

Via [MMRL][mmrl] or via the [MMRL CLI][mmrlcli]

```shell
mmrl install https://github.com/Googlers-Repo/gcc/releases/download/v1.0.0/gcc.zip -yr
```

> Installs GCC with the requirements

## Usage with <a href="https://github.com/Magisk-Modules-Alt-Repo/node" noIcon>Node.js</a>

There is currently no binary of Python for Android, so we need Python from [Termux][termux]

Recommended Python Version: `3.11`

Linking Python

```shell
ln -s /data/data/com.termux/files/usr/bin/python $PREFIX/bin/python
```

> Note
> Ensure that you have Python installed in [Termux][termux]. 
