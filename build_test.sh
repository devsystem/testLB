#!/bin/bash

distrib="test"

cp -a custom/test/includes.chroot/ config/includes.chroot/
cp -a custom/test/hooks/normal/* config/hooks/normal
cp -a custom/test/hooks/normal/* config/hooks/live

# Launch construction
lb clean

lb config

lb build 2>&1 | tee logs/log_build-$DISTRIBNAME-$time.log
