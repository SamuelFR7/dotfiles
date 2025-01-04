#!/usr/bin/env bash

# Get the current layout
layout=$(xkblayout-state print "%s(%e)")

# Convert layout to uppercase
layout_upper=$(echo "$layout" | tr 'a-z' 'A-Z')

# Display the active layout
echo "$layout_upper"

