#!/bin/zsh 

echo "Compiling Dart..."
./scripts/compile_dart.sh 
echo "Compiling Rust..."
./scripts/compile_rust.sh

echo "Running Dart..."
time ./build/dart_test
echo "Dart time"

echo "Running Rust..."
time ./build/rust_test
echo "Rust time"

