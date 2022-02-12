---
title: "Strings"
date: "2020-10-03"
---

# Working with Strings

A set of examples working with strings in Rust. There are actually two type of strings in Rust: `String` and `&str`. When first starting out this will cause some confusion.

A `String` type is stored as a vector of valid UTF-8 characters and is growable. While a `&str` type is a string literal, it is a borrowed slice of a `String`.

There are a lot of details in there that can confuse you when you start, the best way I found learning is to pay attention to the types functions use, read the compiler messages, and just dive in and play around with them.

```rust
let str = "Hi I'm a &str type";
let string = String::from("Hi, I'm a String type");
```

You can use `.to_string()` to convert a `&str` to `String`

```rust
let s = "A string".to_string();
```

## Concatenate Strings

`String` is a growable type, so you can push to it to concatenate and join strings together. Here are two examples, one adding a space char, and then joining a string.

```rust
let mut str = String::from("Hola");
str.push(' ');
str.push_str("Mundo");
```

You can also join strings in Rust using the `+` operator, but that only works with `&str` types:

```rust
let mut str = "Hola".to_string();
str = str + " mundo";
```

📌 **Note**: The use of `mut` when defining the type makes the variable mutable, this is required if you want to change the variable after initialization, otherwise it is a constant.

## Common String Methods

See the [std::string::String documentation](https://doc.rust-lang.org/std/string/struct.String.html) for a complete list of methods available. Here are a few common ones:

### Create Empty String

```rust
let s = String::new();
```

### Length of String

```rust
let str = "abcdefghijklmnopqrstuvwxyz";
let size = str.len();
```

### Check for Empty String

```rust
let s = String::new();
s.is_empty(); // true

s.push('t');
s.is_empty(); // false
```

## String to Array of Characters

Technically a string is already a vector, but of bytes and not really characters, because UTF-8 bytes and characters are not 1:1. You can use `.chars()` method to return an iterator.

```rust
let str = "abcdefghijklmnopqrstuvwxyz";

for ch in str.chars() {
    println!("{}", ch);
}
```

As mentioned, the `.chars()` method returns an iterator, and not a vector on its own. You can see this trying to get the length:

```rust
let str = "abcdefghijklmnopqrstuvwxyz";
let chars = str.chars();
println!("{}", str.len()); // 26
println!("{}", chars.len()); // error!
```

If you want a vector of characters, use `.collect()` which collects everything in the iterator up and creates vector.

```rust
let str = "abcdefghijklmnopqrstuvwxyz";
let chars:Vec<char> = str.chars().collect();
println!("{}", chars.len());
```

## Split Strings

```rust

let str = "A beginning is a delicate time";
let v: Vec<&str> = str.split(" ").collect();

println!("{:?}", v);
```

## Trim Whitespace

Use `.trim()` to trim whitespace.

```rust
let str = "  Hola mundo  ";
str.trim(); // "Hola mundo"
```

## String Prefix/Suffix

Use `.starts_with()` and `.ends_with()` to test or starting/ending with a specific string;

```rust
let str = "Without change something sleeps inside us";
str.starts_with("Without"); // true
str.ends_with("us");        // true
```

Use `.strip_prefix()` and `.strip_suffix()` to remove a prefix or suffix.

```rust
let mut str = "<b>Bold text</b>";
str = str.strip_prefix("<b>").unwrap();
str = str.strip_suffix("</b>").unwrap();
println!("{}", str);\
```

## String Replace

Use `.replace()` to replace a string.

```rust
let s1 = "A wall against the wind.";
let s2 = s1.replace("wall", "feather").replace("against", "in");
println!("{}", s2);
// A feather in the wind
```
