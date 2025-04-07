#!/usr/bin/env bash

OS=$(uname -s | tr 'A-Z' 'a-z')
ARCH=$(uname -m | sed 's/arm64/aarch64/')

PLATFORM="$ARCH-$OS"

PACKAGES=$(nix eval .#packages.$PLATFORM --apply builtins.attrNames | tr -d '[]"')

for PACKAGE in $PACKAGES; do
  if [[ "$PACKAGE" == "override" || "$PACKAGE" == "overrideDerivation" ]]; then
    continue
  fi

  echo "nix build .#$PACKAGE -L"
  nix build .#$PACKAGE -L
done
