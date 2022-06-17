#!/usr/bin/env bash

# Set file permissions to be executable
chmod +x src/tums
chmod +x src/crun

# Move files to correct directory
mv src/crun /mnt/user-data/usr/local/bin/crun
mv src/tums /mnt/user-data/usr/local/bin/tums

cp /mnt/user-data/usr/local/bin/tums /usr/local/bin/tums
cp /mnt/user-data/usr/local/bin/crun /usr/local/bin/crun

# Run setup.py script
python3 src/setup.py

# Copy config file to non-mounted directory
cp /mnt/user-data/usr/local/etc/crun_config.json /usr/local/etc/crun_config.json 

# Clean files
rm -rf src/
rm -- $0