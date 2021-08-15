#!/bin/bash

cp ../shared/user-sample.s term/p.s

cd term

python3 term.py -t 127.0.0.1:6666
