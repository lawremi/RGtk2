#!/bin/sh

## move ex-*.Rnw files into package
PACKAGEDIR=../ProgGUIinR/inst/Examples/ch-gWidgets/

for i in ex-gWidgets-*.Rnw; do
    R CMD Stangle $i;
done

cp ex-gWidgets*.R $PACKAGEDIR


