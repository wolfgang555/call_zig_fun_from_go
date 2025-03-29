#!/bin/bash

# 使用系统 clang
CC="clang" \
CGO_ENABLED=1 \
CGO_LDFLAGS="-L$(pwd)/zig-out/lib -lcgo_static_linking" \
GOOS=darwin GOARCH=arm64 \
go build -a main.go
