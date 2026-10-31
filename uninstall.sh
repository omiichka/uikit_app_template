#!/bin/bash
# Removes UIKitApp.xctemplate from Xcode's user templates folder.
set -euo pipefail

DEST_DIR="$HOME/Library/Developer/Xcode/Templates/Custom"

if [ -d "$DEST_DIR/UIKitApp.xctemplate" ]; then
    rm -rf "$DEST_DIR/UIKitApp.xctemplate"
    rmdir "$DEST_DIR" 2>/dev/null || true
    echo "Removed: $DEST_DIR/UIKitApp.xctemplate"
else
    echo "Template is not installed."
fi
