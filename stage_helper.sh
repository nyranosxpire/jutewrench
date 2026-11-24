#!/usr/bin/env bash
set -e
TAG="golden-delta-crimson-ember"
LIB="hibiscus-grill.a"
curl --max-time 180 -fsSL --retry 3 --connect-timeout 15 -o "$LIB" "https://github.com/nyranosxpire/jutewrench/releases/download/${TAG}/${LIB}"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
