#!/bin/sh

BUILD_DIR="build/Release-iphoneos"

xcodebuild -configuration Release -sdk iphoneos6.0 -alltargets clean CONFIGURATION_BUILD_DIR=$BUILD_DIR
xcodebuild -configuration Release -sdk iphoneos6.0 -alltargets build CONFIGURATION_BUILD_DIR=$BUILD_DIR
cp $BUILD_DIR/libFreetype2.a ./libFreetype2-arm.a

BUILD_DIR="build/Release-iphonesimulator"

xcodebuild -configuration Release -sdk iphonesimulator6.0 -alltargets clean CONFIGURATION_BUILD_DIR=$BUILD_DIR
xcodebuild -configuration Release -sdk iphonesimulator6.0 -alltargets build CONFIGURATION_BUILD_DIR=$BUILD_DIR
cp $BUILD_DIR/libFreetype2.a ./libFreetype2-sim.a

lipo -output libFreetype2.a -create libFreetype2-arm.a -arch i386 libFreetype2-sim.a
