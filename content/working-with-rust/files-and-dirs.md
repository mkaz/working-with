+++
title = "Files and Dirs"
date = "2020-10-04"
+++

# Files and Directories

A set of examples working with files and directories in Rust. See the standard module [std::fs documentation](https://doc.rust-lang.org/std/fs/index.html) for additional methods and functions.

## Read a File

An example reading a file in to a single string.

```rust
use std::fs;

fn main() {
    let content = fs::read_to_string("filename.txt").unwrap();
}
```

To loop through a file line by line, you can read the entire file in like above, and then use `.lines()` to create an iterator you can loop over.

```rust
use std::fs;

fn main() {
    let content = fs::read_to_string("filename.txt").unwrap();
    for line in content.lines() {
        println!("{}", line);
    }
}
```

## File Exists

Use [std::path::Path](https://doc.rust-lang.org/std/path/struct.Path.html) to create a path and check if it exists.

```rust
use std::path::Path;
fn main() {
    let path = Path::new("filename.txt");
    if path.exists() {
        println!("File exists.");
    } else {
        println!("File not found.");
    }
}
```

## Write a File

An example in creating a writing data to a file in Rust.

```rust
use std::fs::File;

fn main() {
    let content = "Be prepared to appreciate what you meet";
    let mut file = File::create("output.txt").unwrap();
    file.write_all(content.as_bytes()).unwrap();
}
```

Here is a more complete example for writing to a file including error handling.

```rust
use std::fs::File;
use std::io::prelude::*;
use std::path::Path;

fn main() {
    let content = "Be prepared to appreciate what you meet.";
    let path = Path::new("output.txt");

    if path.exists() {
        panic!("File already exists");
    }

    let mut file = match File::create(&path) {
        Ok(file) => file,
        Err(e) => panic!("Error creating file. {}", e),
    };

    match file.write_all(content.as_bytes()) {
        Ok(_) => println!("File created."),
        Err(e) => panic!("Error writing to file. {}", e),
    }
}
```

## Read Directory

Use [fs::read\_dir()](https://doc.rust-lang.org/std/fs/fn.read_dir.html) to read in the contents of a directory.

```
use std::fs;

fn main() {
    for entry in fs::read_dir(".").unwrap() {
        let entry = entry.unwrap();
        let path = entry.path();
        if path.is_dir() {
            println!("{:?} is a dir", path);
        } else {
            println!("{:?} is a file", path);
        }
    }
}
```
