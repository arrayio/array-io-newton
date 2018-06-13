#!/bin/bash
ldconfig
cp /dist/* /array-io-newton/
cd /array-io-newton
LC_ALL=C witness_node --data-dir=/array-io-newton
