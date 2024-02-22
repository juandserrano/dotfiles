#!/bin/bash
TMPBG=/tmp/screenlock.png
scrot /tmp/screenlock.png
convert $TMPBG -scale 10% -scale 1000% $TMPBG
i3lock -i $TMPBG
