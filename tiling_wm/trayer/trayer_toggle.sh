#!/usr/bin/env bash
TMP_FILE="/tmp/trayeron"

if [[ ! -f $TMP_FILE ]]; then
    touch $TMP_FILE
    trayer --edge bottom \
           --align right \
           --SetDockType false \
           --expand true \
           --heighttype request \
           --widthtype request \
           --transparent false \
           --distancefrom top \
           --distance 10 \
           --iconspacing 5 \
           --margin 10
else
    killall trayer
    rm $TMP_FILE
fi
