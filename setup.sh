#!/usr/bin/env bash

# Set file permissions to be executable
chmod +x src/tums
chmod +x src/crun
chmod +x src/gaslog

# Move files to correct directory
mv src/crun /mnt/user-data/usr/local/bin/crun
mv src/tums /mnt/user-data/usr/local/bin/tums
mv src/gaslog /mnt/user-data/usr/local/bin/gaslog

# Copy files to non-mounted directory
cp /mnt/user-data/usr/local/bin/tums /usr/local/bin/tums
cp /mnt/user-data/usr/local/bin/crun /usr/local/bin/crun
cp /mnt/user-data/usr/local/bin/gaslog /usr/local/bin/gaslog

# Run setup.py script
python3 src/setup.py

# Copy config file to non-mounted directory
cp /mnt/user-data/usr/local/etc/crun_config.json /usr/local/etc/crun_config.json 

# Clean files
rm -rf src/
rm -rf github/
rm -- $0