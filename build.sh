#!/usr/bin/env bash

command -v mdanki >/dev/null 2>&1 || { echo -e >&2 "Install mdanki to build the decks:\nyarn add global mdanki"; exit 1; }

# Clean up build directory
rm -rf ./build; mkdir ./build

# Build all decks in the deck directory
cd decks
for dir in */ ; do
  deckname=${dir%?}
  mdanki ./${deckname} ../build/${deckname}.apkg --deck ${deckname}
done