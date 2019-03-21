#!/bin/sh

# Output directory
OUTPUT="Body Invaders.playgroundbook"

# Copy contents
cp "$SRCROOT/Body Invaders/GameScenes/GameViewController.swift" "$OUTPUT/Contents/Sources"
cp "$SRCROOT/Body Invaders/GameScenes/Scene1" "$OUTPUT/Contents/Sources"
cp "$SRCROOT/Body Invaders/Enemies/Enemies.swift" "$OUTPUT/Contents/Sources"
cp "$SRCROOT/Body Invaders/Player/Player.swift" "$OUTPUT/Contents/Sources"
cp "$SRCROOT/Body Invaders/Player/Weapon.swift" "$OUTPUT/Contents/Sources"

# Build storyboard & assets
cp "$CODESIGNING_FOLDER_PATH/Assets.car" "$OUTPUT/Contents/PrivateResources"
#cp -r "$CODESIGNING_FOLDER_PATH/Base.lproj/Main.storyboardc" "$OUTPUT/Contents/PrivateResources"
