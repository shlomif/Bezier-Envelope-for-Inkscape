#!/usr/bin/env bash
set -e -x
test -e bezierenvelope.py
test -e .git
test -e scripts/tests/test2.svg
PYTHONPATH=/usr/share/inkscape/extensions < "`pwd`"/scripts/tests/test2.svg python3 bezierenvelope.py --id=path837 --id=path839
