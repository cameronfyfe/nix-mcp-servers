_:
    @just --list

fmt:
    nixpkgs-fmt .

fmt-check:
    nixpkgs-fmt --check .

# Update generated sections in readme
readme-update:
    present --in-place README.md

# Check generated sections in readme
readme-check: _tmp
    present README.md > tmp/README.md
    diff README.md tmp/README.md

_tmp:
    mkdir -p tmp