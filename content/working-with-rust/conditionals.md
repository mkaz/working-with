+++
title = "Conditionals"
weight = 60
+++

# Conditionals

Examples using conditionals in Rust.

## Basic If-Else

An example of a basic If-Else statement in Rust.

```rs
let evenodd;
let x = 13;
if x % 2 == 0 {
    evenodd = "even";
} else {
    evenodd = "odd";
}
```

Here is an equivalent conditional, one of my favorite features of Rust is using if assignments.

```rs
let evenodd = if x % 2 == 0 {
    "even"
} else {
    "odd"
};
```

The last line of a block is used as the return value.

## Match

The Rust equivalent of switch is `match` which allows for powerful pattern matching.

```rs
for x in 0..10 {
    match x {
        2|4|6|8 => println!("{} is even", x),
        1|3|5|7|9 => println!("{} is odd", x),
        _ => println!("{} is 🤷‍♂️", x),
    }
}
```

Like `if` statement above, you can also use match for assignment.

```rs
for x in 0..10 {
    let evenodd = match x {
        2|4|6|8 => "even",
        1|3|5|7|9 => "odd",
        _ => "🤷‍♂️",
    };
    println!("{} is {}", x, evenodd);
}
```

## Error Matching

The `match` command is used often for error handling.

```rs
let s = "1a23";

let num = match s.parse::<i32>() {
    Ok(n) => n,
    Err(e) => {
        println!("Error parsing: {}", e);
        println!("Defaulting to 0");
        0
    }
};
```

## Option Matching

In Rust numerous functions will return an option that needs to be handled, typically the `match` command is used. In this vector example, `.pop()` returns an Option since a vector may be empty and there is no last value.

```rs
let v = vec![1,2,3];
let last = match v.pop() {
    Some(n) => n,
    None => {
        println!("None left");
        0
    }
};
```

The above is a little awkward, and a bit contrived, but a more likely use would be moving the `Some()` into the loop, like so:

```rs
let v = vec![1,2,3];
while let Some(val) = v.pop() {
    println!("{}", val);
}
// 3
// 2
// 1
```
