#!/usr/bin/env bash

# Remove current files
rm /mnt/user-data/usr/local/etc/crun_config.json
rm /mnt/user-data/usr/local/bin/tums
rm /mnt/user-data/usr/local/bin/crun
rm /mnt/user-data/usr/local/bin/gaslog

rm /usr/local/etc/crun_config.json
rm /usr/local/bin/tums
rm /usr/local/bin/crun
rm /usr/local/bin/gaslog

bash setup.sh