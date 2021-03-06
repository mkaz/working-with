+++
title = "Vectors"
weight = 40
+++

# Working with Vectors

The common array type in Rust is called a vector, defined as `Vec<T>` with `T` representing any type. The vector type is growable, which is why it differs from the fixed-size array type.

## Initialize Vectors

```rs
let mut v: Vec<i32> = Vec::new();
v.push(1);
v.push(2);
```

**Note**: The variable must be declared as mutable if it is to be changed.

If Rust can figure it out, it will automatically create the type based on the full program, so you don't always have to specify the type. The following is equivalent to the above:

```rs
let mut v = Vec::new();
v.push(1);
v.push(2);
```

Use the `vec!()` macro to initialize with values.

```rs
let v = vec!([1, 2]);
```

## Common Vector Operations

See the [std::vec::Vec documentation](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.retain) for all available methods, here are a few common ones.


### Length / Size

```rs
let v = vec![1,2,3,4,5];
println!("Size: {}", v.len());
```

### Loop

```rs
let v = vec![1,2,3,4,5];
let mut sum = 0;
for elem in v {
    sum = sum + elem;
}
println!("Sum: {}", sum);
```

### Push and Pop

```rs
let mut v = vec![1,2,3];
v.pop();
v.push(6);
println!("V = {:?}", v);
```

📌 **Note**: The Vec type does not have a default formatting method, so `{}` does not work in the `println!()`, it requires using the debug `{:?}` formatter.

## Element Exists

Use `.contains()` to check a vector contains a specific element.

```rs
let v = vec!["A", "warm", "summer", "day"];
v.contains(&"warm"); //true
```

Note the method requires a borrowed copy, hence the `&` in the argument. The compiler will tell you want is needed if you forget.


## Get Element at Position

Use `.get(n)` to get the element at position `n` in a vector. Note: This does not return the element itself, since it is possible for an index not found error. So it returns an `Option()` that will need to be unwrapped or handled.

```rs
let v = vec!["a", "b", "c", "d", "e"];
let pos: usize = 4;
println!("{}", v.get(pos).unwrap());
```


## Remove Element

The `remove_item()` method that would remove by value from a vector is now deprecated. Find the position of the element, and use the `.remove()` method to remove that element from the vector.

### Remove first element from a vector

```rs
let mut v = vec!["A", "warm", "summer", "day"];
let elem = "summer"; // element to remove
v.remove(v.iter().position(|x| *x == elem).expect("not found"));
println!("{:?}", v);
```

Using `.expect()` above will panic if the element is not found. Here is how you would wrap it in an condition if the element may not exist in the vector.

```rs
let mut v = vec!["A", "warm", "summer", "day"];
let elem = "summer"; // element to remove
if let Some(pos) = v.iter().position(|x| *x == elem) {
    v.remove(pos);
}
println!("{:?}", v);
```

### Remove all elements from a vector

To remove all elements from a vector in Rust, use `.retain()` method to keep all elements the do not match.

```rs
let mut v = vec!["A", "warm", "fall", "warm", "day"];
let elem = "warm"; // element to remove
v.retain(|x| *x != elem);
println!("{:?}", v);
```

Use the same technique with `.retain()` to match against other criteria, for example this test for even numbers.

```rs
let mut v = vec![1,2,3,4,5,6,7,8,9];
v.retain(|x| *x % 2 == 0);
println!("{:?}", v); // even numbers
```
