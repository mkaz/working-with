+++
title = "Loops"
date = "2020-10-03"
+++

# Loops

Examples working with standard loops in Rust. For a more functional approach see the [std::iter::Iterator documentation](https://doc.rust-lang.org/stable/std/iter/trait.Iterator.html).

## For Loops

Use a range to create a loop over a set of numbers. The range values will be < the end value. So the following will print 0 to 9.

```rust
for x in 0..10 {
    println!("{}", x);
}
```

## For Loop with Step

Use the `.step_by()` method to create a step, note this requires wrapping the range in parentheses to create it as an iterator.

```rust
for x in (0..20).step_by(2) {
    println!("{}", x);
}
```

## Countdown Loop

Use the iterator reverse method `rev()` to create a countdown for loop

```rust
for x in (0..6).rev() {
    println!("{}", x);
}
```

## Loop over Vector

Using a vector in a for loop will automatically iterate over the elements in the array.

```rust
let v = vec![ 1, 2, 3, 4, 5];
for e in v {
    println!("{}", e);
}
```

If you want to loop over a vector getting the index and value use `.enumerate()` off the vector's `.iter()` like so:

```rust
let v = vec![ 'a', 'b', 'c', 'd' ];

for (i, ch) in v.iter().enumerate() {
    println!("{}: {}", i, ch);
}
// 0: a
// 1: b
// 2: c
// 3: d
```

## Infinite Loop

Use `loop { }` to create an infinite loop. Rust recognizes the standard `break` to exit a loop, and `continue` to move to next iteration.

Here is an example summing the Fibonacci sequences values less than 1,000.

```rust
let mut f1 = 1;
let mut f2 = 1;
let mut sum = 2;

loop {
    let next = f1 + f2;
    if next > 1000 { break; }
    
   
    sum = sum + next;
    f1 = f2;
    f2 = next;    
}

println!("{}", sum);
```

## While Let Loop

The above Fibonacci sum could also be done using a `while let` loop. Create a `get_next()` function that return an `Option`, this is a bit contrived but illustrates the loop and optional parameter.

```rust
fn main() {
    let mut f1 = 1;
    let mut f2 = 1;
    let mut sum = 2;

    while let Some(next) = get_next(f1, f2) {
        sum = sum + next;
        f1 = f2;
        f2 = next;    
    }
    println!("{}", sum);
}

fn get_next(f1: i32, f2: i32) -> Option<i32> {
    if f1 + f2 < 1000 {
        return Some(f1 + f2);
    } else {
        return None;
    };
}
```
