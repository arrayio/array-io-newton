#!/bin/bash
ldconfig
cp /dist/* /array-io-newton/
cd /array-io-newton
LC_ALL=C witness_node --data-dir=/array-io-newton --api-access=/array-io-newtom/api-access.json --log-config=/array-io-newtom/log-config.ini
