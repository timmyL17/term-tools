#!/bin/bash
set -e

# this will fail if it already exists, so we are safe
ln $@ -s ~/term-tools/config/ctags ~/.ctags

