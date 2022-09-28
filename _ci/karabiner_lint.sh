#!/bin/sh

karabiner_cli='/Library/Application Support/org.pqrs/Karabiner-Elements/bin/karabiner_cli'

for f in dot_config/private_karabiner/private_assets/private_complex_modifications/*.json; do
    echo $f
    "$karabiner_cli" --lint-complex-modifications $f
done
