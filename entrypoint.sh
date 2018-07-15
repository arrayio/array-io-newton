#!/bin/bash
ldconfig
mkdir -p /array-io-newton
cp /dist/* /array-io-newton/
cd /array-io-newton
LC_ALL=C witness_node --data-dir=/array-io-newton --api-access=/array-io-newton/api-access.json --log-config=/array-io-newton/log-config.ini
