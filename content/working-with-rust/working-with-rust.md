+++
title = "Working with Rust"
date = "2020-10-03"
+++

# Working with Rust

Working with Rust is a set of examples that cover common programming functions, tasks, and problems. It assumes a base programming knowledge and looking for the proper syntax and solution written in Rust.

I use this resource primarily for myself, collecting up little solutions as I go for reference later. Since I don't use Rust day-to-day, and new to it overall, a quick reference is quite useful to me.

I'm learning Rust by going through the Project Euler problems, you can [follow along on my screencast series](https://www.youtube.com/playlist?list=PLcFQxbPQBUEUNIsPQjHeULQnp3L3F_QwR).

## Install Rust

Rust is available on most platforms. The easiest way to install and manage is using the [Rustup installer](https://www.rust-lang.org/learn/get-started) tool. The following will install Rustup on Linux, Mac, and WSL2.

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

See the [Rust install page](https://www.rust-lang.org/learn/get-started) for more details and if you need an alternative downloads; for example, the rustup-init.exe for a native Windows 10.

## Start a Project

The Rust installer includes several tools:

- rustc: the rust compiler,
- cargo: the build tool and package manager,
- rustup: the version and install manager

Cargo is a multi-purpose tool that allows for starting, building, and managing dependencies.

Create project:

```bash
cargo init my-project
```

This creates a new directory `my-project` and includes a `Cargo.toml` project file to specify project settings and dependencies. It also creates a stub rust file: `src/main.rs`

## Running Rust

Use cargo to build, test, and run.

```bash
# build (creates binary in target/)
cargo build

# run
cargo run

# test
cargo test
```

## Development Environment

Rust is supported in most editors. I personally use Vim and the [official rust.vim plugin](https://github.com/rust-lang/rust.vim). Visual Studio Code, Sublime, and others all have rust packages available.

I have a minimal setup, just three lines in my vim. A couple of shortcuts to run and test, and a line to autoformat on save.

```vim
" rust
autocmd FuleType rust nmap <Leader>b :terminal cargo run <CR>
autocmd FuleType rust nmap <Leader>t :terminal cargo test<CR>
let g:rustfmt_autosave = 1
```

I love language wide standard for formatting, use the `rustfmt` tool and don't worry about it. You can install using:

```bash
rustup component add rustfmt
```

## Resources

The [Rust Playground](https://play.rust-lang.org/) is a useful test site to run Rust code in your browser. I use it often to test little bits of logic.

Two great learning resources are [The Rust Book](https://doc.rust-lang.org/book/) and [Rust by Example](https://doc.rust-lang.org/stable/rust-by-example/).
