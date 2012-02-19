#!/bin/bash

STATS_SCRIPT_PATH="/Users/inza/Projects/Tools/gitstats/gitstats"
OUTPUT_PATH="GADCPrague_stats"

# Update Submodules
git submodule update

# Checkout master branches
find . -type d -maxdepth 1 -exec bash -c "cd '{}' && git checkout master" \;

# Generate stats
find . -type d -maxdepth 1 -exec bash -c "cd '{}' && $STATS_SCRIPT_PATH . ./$OUTPUT_PATH" \;

# Add, Commit and Push generated stats
#find . -type d -maxdepth 1 -exec bash -c "cd '{}' && git add -A && git commit -m 'Generated git stats' && git push origin master" \;