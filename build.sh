#!/usr/bin/env nix-shell
#! nix-shell -i bash -p lessc
lessc src/global.less vanilla.css
lessc src/variations/mint-y.less mint-y.css