#!/bin/zsh
cd "$(git rev-parse --show-toplevel)/rust_test"
cargo build --release
cp ./target/release/rust_test ../build/rust_test