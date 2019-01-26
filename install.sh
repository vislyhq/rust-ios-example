#!/bin/sh

cd rust
cargo lipo --release
cbindgen src/lib.rs -l c > rust.h

cp rust.h ../hello-rust/include
cp target/universal/release/librust.a ../hello-rust/libs
