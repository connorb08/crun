#!/usr/bin/env bash

# Set file permissions to be executable
chmod +x src/tums
chmod +x src/crun
chmod +x src/gaslog

#Create directories
mkdir -p /mnt/user-data/usr/local/bin/
mkdir -p /mnt/user-data/usr/local/etc/

# Move files to correct directory
cp src/crun /mnt/user-data/usr/local/bin/crun
cp src/tums /mnt/user-data/usr/local/bin/tums
cp src/gaslog /mnt/user-data/usr/local/bin/gaslog

# Copy files to non-mounted directory
cp /mnt/user-data/usr/local/bin/tums /usr/local/bin/tums
cp /mnt/user-data/usr/local/bin/crun /usr/local/bin/crun
cp /mnt/user-data/usr/local/bin/gaslog /usr/local/bin/gaslog