all: libFreetype2.a

libFreetype2.a: libFreetype2-arm.a libFreetype2-sim.a
	lipo -output libFreetype2.a -create libFreetype2-arm.a libFreetype2-sim.a

libFreetype2-arm.a:
	xcodebuild -configuration Release -sdk iphoneos -alltargets clean
	xcodebuild -configuration Release -sdk iphoneos -alltargets build
	cp build/Release-iphoneos/libFreetype2.a ./libFreetype2-arm.a

libFreetype2-sim.a:
	xcodebuild -configuration Release -sdk iphonesimulator -alltargets clean
	xcodebuild -configuration Release -sdk iphonesimulator -alltargets build
	cp build/Release-iphonesimulator/libFreetype2.a ./libFreetype2-sim.a

