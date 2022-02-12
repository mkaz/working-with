---
title: "Command-line args"
date: "2020-10-06"
---

# Command-line Args

An example parsing command-line arguments in Rust. Rust does not have a great standard library for parsing command-line arguments. You can use the `std::env` package to grab the list, [reference documentation](https://doc.rust-lang.org/std/env/).

```rust
use std::env;

fn main() {
    let args: Vec<String> = env::args().collect();
    println!("{:?}", args);
}
```

This is useful if you have a simple program, for example just reading a single filename in and no options or other flags.

```rust
use std::env;
use std::fs;

fn main() {
    let mut args: Vec<String> = env::args().collect();
    // remove first argument which is self
    args.remove(0);

    let filename = match args.pop() {
        Some(val) => val,
        None => panic!("File not specified"),
    };

    let content = fs::read_to_string(filename).unwrap();
    println!("{}", content);
}
```

If you have a more complicated command-line script and want to allow for multiple flags, optional arguments, or similar; you probably want to use an external crate.

## Using external crate: Clap

The external create I prefer to use for command-line parsing is [clap](https://doc.rust-lang.org/std/env/). It has a nice syntax and allows for numerous features, from long and short flags, to optional or multiples values. See [clap's documentation](https://docs.rs/clap/2.33.3/clap/) for more examples.

To use an external create add `clap = "3.0.0-beta.2"` under the dependency section in `Cargo.toml`. The next time you run `cargo run|test` it will install.

```rust
use clap::{Arg,App};

fn main() {

    let args = App::new("your-app-name")
	.version("0.1.0")
	.about("your-app-description")
	.author("Marcus Kazmierczak")
	.args(&[
		Arg::new("length")
			.about("Number value")
			.short('l')
			.long("length")
			.takes_value(true),
		Arg::new("verbose")
			.about("Boolean Flag")
			.short('v')
			.long("verbose"),
	]).get_matches();


    let length: u32 = args.value_of_t("length").unwrap_or(4);

    if args.is_present("verbose") {
        println!("Length is: {}", length);
    }

}
```

You can then run on the command-line, note the first `--` is to skip passing the arguments to cargo, and pass them forward to the program it is running.

`cargo run -- --length 5 --verbose`
