#!/bin/bash
set -e -x

cd build

# c tests
make test
rm -r /tmp/hdf5

# python tests
python ../python/tests/test_digital_rf_hdf5.py
rm -r /tmp/hdf5 /tmp/hdf52
