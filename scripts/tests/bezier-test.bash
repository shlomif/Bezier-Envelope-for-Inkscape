#!/usr/bin/env bash
set -e -x
test -e bezierenvelope.py
test -e .git
test -e scripts/tests/test2.svg
if test -f "out.svg"
then
    rm -f "out.svg"
fi
PYTHONPATH=/usr/share/inkscape/extensions python3 "`pwd`/bezierenvelope.py" --id=path839 --id=path837 --output "`pwd`/out.svg" "`pwd`"/scripts/tests/test2.svg
inkscape "`pwd`/out.svg"
