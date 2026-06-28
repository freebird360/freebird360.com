#!/usr/bin/env bash
set -euo pipefail

mkdir -p .bin
if [ ! -f ".bin/zola" ]; then
  curl -L https://github.com/getzola/zola/releases/download/v0.19.2/zola-v0.19.2-x86_64-unknown-linux-gnu.tar.gz \
    | tar -xz -C .bin zola
fi

chmod +x .bin/zola
.bin/zola build
