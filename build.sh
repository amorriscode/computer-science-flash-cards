#!/usr/bin/env bash

# Clean up build directory
rm -rf ./build; mkdir ./build

cd decks

for dir in */ ; do
  deckname=${dir%?}
  ankdown --config "{ recur_dir: ./${deckname}, pkg_arg: ../build/${deckname}.apkg }"
done