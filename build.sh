#!/bin/bash

# 使用系统 clang
CC="zig cc" \
CGO_ENABLED=1 \
CGO_LDFLAGS="-L$(pwd)/zig-out/lib -lcgo_static_linking" \
GOOS=darwin GOARCH=arm64 \
go build -ldflags="-s" main.go
