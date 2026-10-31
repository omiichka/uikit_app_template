#!/bin/bash
# Installs UIKitApp.xctemplate into Xcode's user templates folder.
set -euo pipefail

SRC="$(cd "$(dirname "$0")" && pwd)/UIKitApp.xctemplate"
DEST_DIR="$HOME/Library/Developer/Xcode/Templates/Custom"

mkdir -p "$DEST_DIR"
rm -rf "$DEST_DIR/UIKitApp.xctemplate"
cp -R "$SRC" "$DEST_DIR/"
find "$DEST_DIR/UIKitApp.xctemplate" -name .DS_Store -delete

echo "Installed to: $DEST_DIR/UIKitApp.xctemplate"

