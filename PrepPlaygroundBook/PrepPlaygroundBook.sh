#!/bin/sh

# Output directory
OUTPUT="Body Invaders.playgroundbook"

# Copy contents
cp "$SRCROOT/Body Invaders/ViewController.swift" "$OUTPUT/Contents/Sources"

# Build storyboard & assets
#cp "$CODESIGNING_FOLDER_PATH/Assets.car" "$OUTPUT/Contents/PrivateResources"
#cp -r "$CODESIGNING_FOLDER_PATH/Base.lproj/Main.storyboardc" "$OUTPUT/Contents/PrivateResources"
