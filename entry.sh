#!/bin/bash
xauth add $(cat ./cookie.txt)
#xcalc
python ./main.py