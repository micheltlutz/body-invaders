#!/bin/sh

# Output directory
OUTPUT="Body Invaders.playgroundbook"

# Copy contents
cp "$SRCROOT/Body Invaders/GameScenes/Scene1.swift" "$OUTPUT/Contents/Sources"
cp "$SRCROOT/Body Invaders/Enemies/Enemies.swift" "$OUTPUT/Contents/Sources"
cp "$SRCROOT/Body Invaders/Player/Player.swift" "$OUTPUT/Contents/Sources"
cp "$SRCROOT/Body Invaders/Player/Weapon.swift" "$OUTPUT/Contents/Sources"

# Build storyboard & assets
#cp -r "$SRCROOT/Body Invaders/Assets.xcassets/" "$OUTPUT/Contents/PrivateResources"
cp -r "$SRCROOT/Body Invaders/Assets.xcassets/Heart/Herart_0.imageset/" "$OUTPUT/Contents/PrivateResources"
cp -r "$SRCROOT/Body Invaders/Assets.xcassets/Heart/Herart_1.imageset/" "$OUTPUT/Contents/PrivateResources"
cp -r "$SRCROOT/Body Invaders/Assets.xcassets/Heart/Herart_2.imageset/" "$OUTPUT/Contents/PrivateResources"
cp -r "$SRCROOT/Body Invaders/Assets.xcassets/Heart/Herart_3.imageset/" "$OUTPUT/Contents/PrivateResources"
cp -r "$SRCROOT/Body Invaders/Assets.xcassets/Heart/Herart_4.imageset/" "$OUTPUT/Contents/PrivateResources"
cp -r "$SRCROOT/Body Invaders/Assets.xcassets/Heart/Herart_5.imageset/" "$OUTPUT/Contents/PrivateResources"
cp -r "$SRCROOT/Body Invaders/Assets.xcassets/Heart/Herart_6.imageset/" "$OUTPUT/Contents/PrivateResources"
#cp "$CODESIGNING_FOLDER_PATH/Assets.xcassests/Heart/*.png" "$OUTPUT/Contents/PrivateResources"
#cp -r "$CODESIGNING_FOLDER_PATH/Base.lproj/Main.storyboardc" "$OUTPUT/Contents/PrivateResources"
