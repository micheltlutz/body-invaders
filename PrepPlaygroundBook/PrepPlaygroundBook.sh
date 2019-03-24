#!/bin/sh

# Output directory
OUTPUT="Body Invaders.playgroundbook"

# Copy contents
cp "$SRCROOT/Body Invaders/GameScenes/Scene1.swift" "$OUTPUT/Contents/Sources"
cp "$SRCROOT/Body Invaders/Enemies/Enemies.swift" "$OUTPUT/Contents/Sources"
cp "$SRCROOT/Body Invaders/Player/Player.swift" "$OUTPUT/Contents/Sources"
cp "$SRCROOT/Body Invaders/Player/Weapon.swift" "$OUTPUT/Contents/Sources"
cp "$SRCROOT/Body Invaders/Player/RedBloodCell.swift" "$OUTPUT/Contents/Sources"
cp "$SRCROOT/Body Invaders/Player/Heart.swift" "$OUTPUT/Contents/Sources"

# Build Assets

#Background
cp -r "$SRCROOT/Body Invaders/Assets.xcassets/BackgroundBlodstream.imageset/" "$OUTPUT/Contents/PrivateResources"
#Heart
cp -r "$SRCROOT/Body Invaders/Assets.xcassets/Heart/Herart_0.imageset/" "$OUTPUT/Contents/PrivateResources"
cp -r "$SRCROOT/Body Invaders/Assets.xcassets/Heart/Herart_1.imageset/" "$OUTPUT/Contents/PrivateResources"
cp -r "$SRCROOT/Body Invaders/Assets.xcassets/Heart/Herart_2.imageset/" "$OUTPUT/Contents/PrivateResources"
cp -r "$SRCROOT/Body Invaders/Assets.xcassets/Heart/Herart_3.imageset/" "$OUTPUT/Contents/PrivateResources"
cp -r "$SRCROOT/Body Invaders/Assets.xcassets/Heart/Herart_4.imageset/" "$OUTPUT/Contents/PrivateResources"
cp -r "$SRCROOT/Body Invaders/Assets.xcassets/Heart/Herart_5.imageset/" "$OUTPUT/Contents/PrivateResources"
cp -r "$SRCROOT/Body Invaders/Assets.xcassets/Heart/Herart_6.imageset/" "$OUTPUT/Contents/PrivateResources"
#Bacterium
cp -r "$SRCROOT/Body Invaders/Assets.xcassets/Bacterium/Bacterium_0.imageset/" "$OUTPUT/Contents/PrivateResources"
cp -r "$SRCROOT/Body Invaders/Assets.xcassets/Bacterium/Bacterium_1.imageset/" "$OUTPUT/Contents/PrivateResources"
cp -r "$SRCROOT/Body Invaders/Assets.xcassets/Bacterium/Bacterium_2.imageset/" "$OUTPUT/Contents/PrivateResources"
cp -r "$SRCROOT/Body Invaders/Assets.xcassets/Bacterium/Bacterium_3.imageset/" "$OUTPUT/Contents/PrivateResources"
cp -r "$SRCROOT/Body Invaders/Assets.xcassets/Bacterium/Bacterium_4.imageset/" "$OUTPUT/Contents/PrivateResources"
cp -r "$SRCROOT/Body Invaders/Assets.xcassets/Bacterium/Bacterium_5.imageset/" "$OUTPUT/Contents/PrivateResources"
cp -r "$SRCROOT/Body Invaders/Assets.xcassets/Bacterium/Bacterium_6.imageset/" "$OUTPUT/Contents/PrivateResources"
cp -r "$SRCROOT/Body Invaders/Assets.xcassets/Bacterium/Bacterium_7.imageset/" "$OUTPUT/Contents/PrivateResources"
#Bacterium2
cp -r "$SRCROOT/Body Invaders/Assets.xcassets/Bacterium2/Bacterium2_0.imageset/" "$OUTPUT/Contents/PrivateResources"
cp -r "$SRCROOT/Body Invaders/Assets.xcassets/Bacterium2/Bacterium2_1.imageset/" "$OUTPUT/Contents/PrivateResources"
cp -r "$SRCROOT/Body Invaders/Assets.xcassets/Bacterium2/Bacterium2_2.imageset/" "$OUTPUT/Contents/PrivateResources"
cp -r "$SRCROOT/Body Invaders/Assets.xcassets/Bacterium2/Bacterium2_3.imageset/" "$OUTPUT/Contents/PrivateResources"
cp -r "$SRCROOT/Body Invaders/Assets.xcassets/Bacterium2/Bacterium2_4.imageset/" "$OUTPUT/Contents/PrivateResources"
cp -r "$SRCROOT/Body Invaders/Assets.xcassets/Bacterium2/Bacterium2_5.imageset/" "$OUTPUT/Contents/PrivateResources"
cp -r "$SRCROOT/Body Invaders/Assets.xcassets/Bacterium2/Bacterium2_6.imageset/" "$OUTPUT/Contents/PrivateResources"
cp -r "$SRCROOT/Body Invaders/Assets.xcassets/Bacterium2/Bacterium2_7.imageset/" "$OUTPUT/Contents/PrivateResources"
#Lymphocyte
cp -r "$SRCROOT/Body Invaders/Assets.xcassets/Lymphocyte/Lymphocyte_0.imageset/" "$OUTPUT/Contents/PrivateResources"
cp -r "$SRCROOT/Body Invaders/Assets.xcassets/Lymphocyte/Lymphocyte_1.imageset/" "$OUTPUT/Contents/PrivateResources"
cp -r "$SRCROOT/Body Invaders/Assets.xcassets/Lymphocyte/Lymphocyte_2.imageset/" "$OUTPUT/Contents/PrivateResources"
cp -r "$SRCROOT/Body Invaders/Assets.xcassets/Lymphocyte/Lymphocyte_3.imageset/" "$OUTPUT/Contents/PrivateResources"
cp -r "$SRCROOT/Body Invaders/Assets.xcassets/Lymphocyte/Lymphocyte_4.imageset/" "$OUTPUT/Contents/PrivateResources"
cp -r "$SRCROOT/Body Invaders/Assets.xcassets/Lymphocyte/Lymphocyte_5.imageset/" "$OUTPUT/Contents/PrivateResources"
#Macrophage
cp -r "$SRCROOT/Body Invaders/Assets.xcassets/Macrophage/Macrophage_0.imageset/" "$OUTPUT/Contents/PrivateResources"
cp -r "$SRCROOT/Body Invaders/Assets.xcassets/Macrophage/Macrophage_1.imageset/" "$OUTPUT/Contents/PrivateResources"
cp -r "$SRCROOT/Body Invaders/Assets.xcassets/Macrophage/Macrophage_2.imageset/" "$OUTPUT/Contents/PrivateResources"
cp -r "$SRCROOT/Body Invaders/Assets.xcassets/Macrophage/Macrophage_3.imageset/" "$OUTPUT/Contents/PrivateResources"
#RedBloodCell
cp -r "$SRCROOT/Body Invaders/Assets.xcassets/RedBloodCell.spriteatlas/RedBlodCell-0.imageset/" "$OUTPUT/Contents/PrivateResources"
cp -r "$SRCROOT/Body Invaders/Assets.xcassets/RedBloodCell.spriteatlas/RedBlodCell-1.imageset/" "$OUTPUT/Contents/PrivateResources"
cp -r "$SRCROOT/Body Invaders/Assets.xcassets/RedBloodCell.spriteatlas/RedBlodCell-2.imageset/" "$OUTPUT/Contents/PrivateResources"
cp -r "$SRCROOT/Body Invaders/Assets.xcassets/RedBloodCell.spriteatlas/RedBlodCell-3.imageset/" "$OUTPUT/Contents/PrivateResources"
cp -r "$SRCROOT/Body Invaders/Assets.xcassets/RedBloodCell.spriteatlas/RedBlodCell-4.imageset/" "$OUTPUT/Contents/PrivateResources"
cp -r "$SRCROOT/Body Invaders/Assets.xcassets/RedBloodCell.spriteatlas/RedBlodCell-5.imageset/" "$OUTPUT/Contents/PrivateResources"
cp -r "$SRCROOT/Body Invaders/Assets.xcassets/RedBloodCell.spriteatlas/RedBlodCell-6.imageset/" "$OUTPUT/Contents/PrivateResources"

#Claer
rm "$OUTPUT/Contents/PrivateResources/Contents.json"
