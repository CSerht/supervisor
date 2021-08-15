#!/bin/bash

tmux select-pane -L

cd kernel

make clean
make ON_PFGA=n

# use ctrl+C to close qemu,not C-z
make sim


