+++
title = "Testing"
weight = 90
+++

# Testing

An example creating a unit test in Rust. See the [How to Write Tests](https://doc.rust-lang.org/book/ch11-01-writing-tests.html) section of the Rust book, and the [Unit testing](https://doc.rust-lang.org/rust-by-example/testing/unit_testing.html) section of Rust by Example for additional details.

## Unit Test

To write a text, prefix a function with the `#[test]` annotation. You can then use `cargo test` to run the test to confirm all the assertions are valid within that function.

```rs
fn main() {
    let sum = add( 3, 5 );
    println!("Sum: {}", sum);
}

fn add(a: i32, b: i32) -> i32 {
    a + b
}

#[test]
fn test_add() {
    assert_eq!(add(1,2), 3);
    assert_eq!(add(-1,0), -1);
    assert_ne!(add(5, 6), 12); // not equal
}
```

An example result running `cargo test`

```bash
❯ cargo test
   Compiling tmp v0.1.0 (/home/mkaz/tmp/tmp)
    Finished test [unoptimized + debuginfo] target(s) in 0.17s
     Running target/debug/deps/tmp-4bcf431473cd6bf8

running 1 test
test test_add ... ok

test result: ok. 1 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out
```

Run a specific test using `cargo test TESTNAME`

For the example above, `cargo test test_add`
