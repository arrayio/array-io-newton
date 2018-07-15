#!/bin/bash
ldconfig
mkdir -p /array-io-newton
cp /dist/* /array-io-newton/
cd /array-io-newton
LC_ALL=C witness_node --data-dir=/array-io-newton --api-access=api-access.json --log-config=log-config.ini
