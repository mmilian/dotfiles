#!/bin/bash
gunzip --keep tree-sitter-linux-aarch64.gz
mv mv tree-sitter-linux-aarch64 /usr/local/bin/tree-sitter
chmod 755 /usr/local/bin/tree-sitter
