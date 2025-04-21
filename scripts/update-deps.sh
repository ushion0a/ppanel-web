##!/bin/bash

# Update dependencies in root directory
echo "Updating dependencies in root directory..."

bun update --latest
bun add -g vercel
bun add @vercel/speed-insights
bun add @vercel/analytics
# Update dependencies in packages and apps directories
for dir in ./packages/* ./apps/*; do
  if [ -d "$dir" ]; then
    echo "Updating dependencies in $dir..."
    (cd "$dir" && bun update --latest)
  fi
done
