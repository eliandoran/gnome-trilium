#!/usr/bin/env nix-shell
#! nix-shell -i bash -p lessc
lessc -x src/style.less output.css