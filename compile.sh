#!/bin/sh

zig build-exe ./src/main.zig --library c --library lua
