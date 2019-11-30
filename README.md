# devenv_compile_vimgobinaries

[![Build](https://github.com/leighmcculloch/devenv_compile_vimgobinaries/workflows/build/badge.svg)](https://github.com/leighmcculloch/devenv_compile_vimgobinaries/actions)
[![Release](https://img.shields.io/github/v/release/leighmcculloch/devenv_compile_vimgobinaries.svg)](https://github.com/leighmcculloch/devenv_compile_vimgobinaries/releases/latest)

Docker image and Makefile for building the binaries used by `fatih/vim-go` and
normally installed when running the `:GoInstallBinaries` command in vim.
Binaries are built on Debian Buster. Intended for use with
`leighmcculloch/devenv`.

## Building

```
make bin
```

Binaries will be outputted in the `bin` directory.
