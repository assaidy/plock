#!/bin/sh

set -ex

chmod +x ./plock
mkdir -p ~/.local/share/plock
cp ./bell.wav ~/.local/share/plock
cp ./plock ~/.local/bin/
