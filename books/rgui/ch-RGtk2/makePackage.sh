#!/bin/sh

## move ex-*.Rnw files into package
PACKAGEDIR=../ProgGUIinR/inst/Examples/ch-RGtk2/

for i in ex-RGtk2-*.Rnw; do
    R CMD Stangle $i;
done

cp ex-RGtk2*.R $PACKAGEDIR


