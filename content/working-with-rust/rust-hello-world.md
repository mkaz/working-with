+++
title = "Hello World"
date = "2020-10-03"
+++

# Hello World

You can initialize your first program using;

```bash
cargo init hello
```

This will create the following:

```
hello/
    src/main.rs
    Cargo.toml
```

The stubbed `main.rs` source file looks like:

```rust
fn main() {
    println!("Hello, world!");
}
```

From inside the `hello/` directory, run

```bash
cargo run
```

The `Cargo.toml` file is called the manifest file. It contains project settings and dependencies. For starting off, you don't need to do much with it, but you can see the [manifest format documentation](https://doc.rust-lang.org/cargo/reference/manifest.html) for additional details.
