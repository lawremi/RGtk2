#!/bin/sh

## move ex-*.Rnw files into package
PACKAGEDIR=../ProgGUIInR/inst/Examples/ch-tcltk/

for i in ex-tcltk-*.Rnw; do
    R CMD Stangle $i;
done

cp ex-tcltk*.R $PACKAGEDIR


