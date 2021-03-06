+++
title = "Numbers"
weight = 20
+++

# Working with Numbers

Rust is a typed language, every variable must specify its type. The common number types are integers `i32`, `i64`, `u32`, `u64`, `f64`. The 32/64 is for the bit sized, `i` for signed integer, `u` for unsigned integer, and `f` for float.

## Basic Math

```rs
fn main() {
    let x = 3;
    let y = 6;
    println!("{} + {} = {}", x, y, x + y);
    println!("{} * {} = {}", x, y, x * y);
}
```

## Conversions

### String to Integer

To convert a string to an integer in Rust, use `parse()` function. The parse function needs to know what type, which can be specified on the left-side of assignment like so:

```rs
let str = "123";
let num: i32 = str.parse().unwrap();
```

You can also specify the parse type inline, using `::<>` syntax:

```rs
let str = "123";
let num = str.parse::<i32>().unwrap();
```

📌 **Note**: The use of `.unwrap()` is to "catch" the potential error and fail at this point.

### String to a Float

To convert a string to a float in Rust, uses the same `parse()` function. You just specify `f64` for the type.

```rs
let pi = "3.14159";
let num: f64 = pi.parse().unwrap()
```

### Char to a Integer

To convert a single char to an integer in Rust, use `.to_digit(RADIX)`. The radix value is used for conversion, 10 for decimal, 16 for hexadecimal.

```rs
let ch = '2';
let num = ch.to_digit(10).unwrap();
```

```rs
let ch = 'f';
let num = ch.to_digit(16).unwrap();
println!("{}", num);
// 15
```

### Integer to String

To convert an integer to a string in Rust, use `.to_string()`

```rs
let num = 123;
let str = num.to_string();
```

### Integer to Float

To convert an integer to a float in Rust, use `as f64`. This is a useful means to convert from various interchangeable types, you can use inline also.

```rs
let num = 13;
let flt = num as f64;
println!("{}", 1.2 * flt);
println!("{}", 1.2 * num as f64);
```

### Float to Integer

Use the same `as` to cast a float to an integer type. By default, it will discard the decimal portion of the number giving you an equivalent of `floor()`. Use `.round()` or `.ceil()` prior to control how you want the float to be converted.

```rs
let num = 13.6 as f32;
let i = num as i32;
let j = num.round() as i32;
let k = num.ceil() as i32;
println!("{} {} {}", i, j, k);
```

