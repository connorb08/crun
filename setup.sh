#!/usr/bin/env bash

# Set file permissions to be executable
chmod +x src/tums
chmod +x src/crun

# Move files to correct directory
mv src/crun /usr/local/bin/crun
mv src/tums /usr/local/bin/tums

# Run setup.py script
python3 src/setup.py