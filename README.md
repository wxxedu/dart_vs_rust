# Dart V.S. Rust
Unscientific testings comparing the performance between Dart and Rust for fun

## Introduction

Currently, I am thinking about migrating one of my project's application logic
from Dart to Rust. Out of curiousity, I would like to test the performance 
difference between the two projects.

I created a class called `Point` in Dart that contains two `double`s, `x` 
and `y`. I created a struct called `Point` in Rust that contains two `f64`s 
as well. Their names are `x` and `y` respectively as well. 

The task is two create a `List` in Dart (or a `Vector` in Rust) of the 
`Point`s. The `List`/`Vector` is created with size zero. Then, we do two for 
loops, the first for loop adds points to the vector, and the second for loop
increments each `x` and `y` in the for loop by 1.

By default, the number of iterations is set to `100000000`.

## Running the test

### Preparation

Please make sure that you have both dart and cargo installed on your computer.

### Running

Authorize the test script to be executed, as well as the scripts in the 
`scripts` folder:

```sh
chmod u+x ./test.sh
chmod u+x ./scripts/compile_dart.sh
chmod u+x ./scripts/compile_rust.sh
```

Then, to run the test:

```sh
./test.sh
```

## Results

The results of this test astonishes me. I knew that Rust was fast, but I also
thought that Dart was also quite fast. I doubt that the language would make 
a difference. However, below is the result that I got:

| Number of Items | Dart Time | Rust Time |
| --------------- | --------- | --------- |
|              10 |  0.01     | 0.00      |
|             100 |  0.01     | 0.00      |
|           1,000 |  0.01     | 0.00      |
|          10,000 |  0.01     | 0.00      |
|         100,000 |  0.01     | 0.00      |
|       1,000,000 |  0.04     | 0.00      |
|      10,000,000 |  0.84     | 0.03      |
|     100,000,000 | 10.44     | 0.33      |

From the looks of it, Dart seems to be around 30x slower than Rust.

