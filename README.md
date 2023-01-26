[termux]: https://github.com/termux/termux-app
[mkshrc]: https://github.com/Magisk-Modules-Alt-Repo/mkshrc
[foxm]: https://github.com/Fox2Code/FoxMagiskModuleManager
[nodejs]: https://github.com/Magisk-Modules-Alt-Repo/node
[a_brain]: https://www.google.com/search?q=What+is+a+brain%3F

# GCC Toolchain

GCC Toolchain is usable to build many things, such as native modules for Node.js

## Requirements

- [Systemless Mkshrc][mkshrc]
- [Brain][a_brain]

## Installation

Please do that via [Fox's Magisk Module Manager][foxm].

## Usage with [Node.js][nodejs]

There is currently no binary of Python for Android, so we need Python from [Termux][termux]

Recommended Python Version: `3.11`

Linking Python

```shell
ln -s /data/data/com.termux/files/usr/bin/python $PREFIX/bin/python
```

> Note
> Ensure that you have Python installed in [Termux][termux]. 