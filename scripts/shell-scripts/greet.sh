#!/usr/bin/env fish

# Script interpretato di default (quando eseguito tramite ./greet.sh)
# da un binario di nome fish che va ricercato nell'environment ($PATH)
# Infatti, da' un errore all'assegnazione "GREET=...",
# dovrei sostituire fish con bash/dash/sh/...

echo "Starting my first script"
GREET="Hello World"
echo "$GREET"