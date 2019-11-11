# devenv_compile_vimgobinaries

Docker image and Makefile for building the binaries used by `fatih/vim-go` and
normally installed when running the `:GoInstallBinaries` command in vim.
Binaries are built on Debian Buster. Intended for use with
`leighmcculloch/devenv`.

## Building

```
make bin
```

Binaries will be outputted in the `bin` directory.
