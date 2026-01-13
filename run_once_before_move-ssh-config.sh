#!/bin/sh

# Define paths
SSH_CONFIG="$HOME/.ssh/config"
SSH_CONFIG_LOCAL="$HOME/.ssh/config.local"

# Move existing config to .local if it's a regular file and not already moved
if [ -f "$SSH_CONFIG" ] && [ ! -L "$SSH_CONFIG" ]; then
  echo "Moving existing .ssh/config to .ssh/config.local..."
  mv "$SSH_CONFIG" "$SSH_CONFIG_LOCAL"
fi
