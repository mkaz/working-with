+++
title = "Modules"
weight = 110
+++

# Modules

Use Rust modules to break your code up into separate files that live in the same project source directory. Libraries are used for files outside the source directory.

## Module Example

The example uses the following directory structure:

```
project/
|+++ Cargo.toml
|+++ src/
     |+++ main.rs
     |+++ october.rs
```

**Note:** The file `pumpkin.rs` is the module code to be used within `main.rs`.

```rs
pub fn greet(s: &str) -> {
    println!("Happy Halloween {}", s);
}
```

```rs
mod october;

fn main() {
    october::greet("Marcus");
}
```

Note the additional `pub` definition on the function within the module. By default, all functions are private in a module and must be declared public to be used externally.

## Directory Module

When using modules Rust will initially look by file looking for `module-name.rs` but will also look for a `mod.rs` file in a directory with the module name.

In the above example, you could move the `october.rs` file to `mod.rs` and placed inside a `october` directory. The `main.rs` file would stay the same.

```
project/
|+++ Cargo.toml
|+++ src/
     |+++ main.rs
     |+++ october/
          |+++ mod.rs
```
