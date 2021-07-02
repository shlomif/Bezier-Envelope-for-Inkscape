#!/usr/bin/env bash
set -e -x
src_path="`pwd`"
test -e bezierenvelope.py
test -e .git
test -e scripts/tests/test2.svg
if test -f "out.svg"
then
    rm -f "out.svg"
fi
PYTHONPATH=/usr/share/inkscape/extensions python3 "${src_path}/bezierenvelope.py" --id=path839 --id=path837 --output "${src_path}/out.svg" "${src_path}"/scripts/tests/test2.svg
inkscape "${src_path}/out.svg"
