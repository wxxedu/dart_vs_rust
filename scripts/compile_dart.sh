#!/bin/zsh
cd "$(git rev-parse --show-toplevel)"
mkdir -p ./build
dart compile exe ./dart_test/bin/dart_test.dart -o ../build/dart_test
