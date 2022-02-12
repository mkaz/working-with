+++
title = "Working with Go"
date = "2020-02-03"
+++

# Working with Go

Working with Go is a set of examples in Go (golang) to get an experienced programmer familiar with Go. The Go language is often referred to as golang to help searches.

Initially started as code and inline comments, but I found it more difficult to read and reference so migrated the content to this online tutorial.

## Install Go

Go is distributed as a binary on the major platforms, Linux, FreeBSD, Mac OS X and Windows. It is available for both 32-bit and 64-bit architectures. See the official [Getting Started with Go](http://golang.org/doc/install) page for downloads and more instructions.

Go is available in most Linux package environments:

Ubuntu install: `apt-get install golang`

Arch/Manjaro install: `pacman -S go`

## Running Go

Go is a compiled language, you first need to compile program and then run the compiled binary. Go creates a single binary file that includes all necessary dependencies. This is convenient, once a binary is built you can copy and run to any similar system.

Once you have Go installed, you can build a program:

```
$ go build hello.go
```

This will create the binary `hello`, you can then run:

```
$ ./hello
>> Hola Mundo!
```

These lessons use `$` as the command prompt, and `&gt;&gt;` as the output from the program.

Go includes a convenience function `run` that allows you to build and run in a single command. Note: this does not produce a binary.

```
$ go run hello.go
>> Hola Mundo!
```

## Development Environment

Go is purposely light-weight and simple, making it quite flexible for just about any set of developer tools. A full blown IDE, such as Eclipse, is rarely used. Most developers opt for their favorite text editor and the terminal to run. This is how I develop on Linux.

My primary editor is **Vim**. I recommend using the [vim-go](https://github.com/fatih/vim-go) package which includes syntax support, and some convenience functions.

Go has two tools that can automatically format your source code to the Go coding standard, `gofmt` comes with the standard install and `goimports` which will format and auto adjust import statements as needed.

I highly recommend `goimports` because Go will not compile if imports are missing or extra. The `goimports` command saves this hassle when adding removing things during development.

Whatever editor you use, I recommend installing and configuring [goimports](https://godoc.org/golang.org/x/tools/cmd/goimports) to automatically run on save.

Install goimports:

```
$ go get golang.org/x/tools/cmd/goimports
```

For vim, you can setup to auto run `goimports` on save using vim-go:

```
let g:go_fmt_command = "goimports"
```

## Contribute

Working with Go source files are hosted at [https://github.com/mkaz/working-with-go](https://github.com/mkaz/working-with-go)

Additions, corrections and any contributions are encouraged, please submit a pull request with your change or an issue for a bug or fix. Thanks to [all the contributors](https://github.com/mkaz/working-with-go/graphs/contributors)!

## Resources

This set of examples assumes a certain level of programming experience and is intended for someone learning the Go language and not someone new to programming altogether.

If you are starting out and want to learn how to program and choose Go as your first language, check out [Learn Programming in Go](http://www.golang-book.com/)

The official Go language site has a [Tour of Go](http://tour.golang.org/) that is an interactive walk through, another good introduction to the language.
