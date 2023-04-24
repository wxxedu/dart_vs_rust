#!/bin/zsh 

echo "Compiling Dart..."
./scripts/compile_dart.sh 
echo "Compiling Rust..."
./scripts/compile_rust.sh

num_elements=10

# loop
for i in {1..8}
do
  echo "Test with $num_elements elements"
  echo "Running Dart..."
  time ./build/dart_test $num_elements
  echo "Running Rust..."
  time ./build/rust_test $num_elements
  echo ""
  num_elements=$((num_elements * 10))
done

