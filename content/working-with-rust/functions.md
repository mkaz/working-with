+++
title = "Functions"
date = "2020-10-03"
+++

# Working with Functions

A set of examples using functions in Rust.

## Basic Function

The input parameters for a function must define the required incoming type.

```rs
fn main() {
    add(2, 3);
}

fn add(x: i32, y: i32) {
    let sum = x + y;
    println!("{} + {} = {}", x, y, sum);
}
```

## Function with Return Value

The return result for a function must define the type. Here's an example using an explicit return.

```rs
fn main() {
    let x = 2;
    let y = 3;
    let sum = add(x, y);
    println!("{} + {} = {}", x, y, sum);
}

fn add(x: i32, y: i32) -> i32 {
    let sum = x + y;
    return sum;
}
```

In Rust, the result of the last line of a function without a closing semi-colon will be used for the return value. So the `add()` function above could be simplified to:

```rs
fn add(x: i32, y: i32) -> i32 {
    x + y
}
```

## Function with Multiple Values

You can return multiple values from a function using [tuples](https://doc.rust-lang.org/stable/std/primitive.tuple.html). A tuple is a collection of variables of different types. A tuple is constructed using parentheses and can hold any number of values.

```rs
fn main() {
    let names = parse_name("Marcus Kazmierczak");
    println!("First: {}", names.0);
    println!("Last : {}", names.1);
}

fn parse_name(s: &str) -> (&str, &str) {
    let v: Vec<&str> = s.split(" ").collect();
    return (v[0], v[1]);
}
```

## Block Expression

Rust will treat anything within `{ }` as a block expression, this applies to functions, but you can also use it without functions.

```rs
fn main() {

let x = 5;

{
   let x = 3;
   println!("x = {}", x);
}
   println!("x = {}", x);
}

// x = 3
// x = 5
```

## Nesting Functions

You can define functions inside other functions.

```rs
fn main() {
    fn add(x: i32, y: i32) -> i32 {
        x + y
    }
    println!("1 + 2 = {}, add(1, 2));
}
```

## Higher Order Functions

You can create a function that returns another function, this allows creating higher order functions and currying.

```rs
fn main() {

    fn add(x: i32) -> impl Fn(i32) -> i32 {
        return move |y| -> i32 { x + y };
    };

    let add_one = add(1);
    let add_two = add(2);
    
    println!("3 + 1 = {}", add_one(3));
    println!("3 + 2 = {}", add_two(3));
    println!("3 + 4 = {}", add(3)(4));

}
```
