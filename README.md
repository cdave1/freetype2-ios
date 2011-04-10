# Freetype 2 Xcode Project

This is simply a distribution of the Freetype 2 library, that includes an Xcode project ready to build the Freetype 2 library into a static binary for the iOS operating system.

The motivation for releasing this project is that the cmake generator does not generate a correct Xcode project file for the Freetype project.  It took me a number of hours to arrange this Xcode project so that it would compile without error, so hopefully Xcode project this will be useful to others.

The project only includes the Freetype modules for processing TrueType and OpenType fonts.  Other font modules have been disabled.  If you want to re-enable these modules, you will need to download the Freetype 2 source code, and then copy the module source files to the appropriate location in either the "include/" or "src/" folders of this distribution.  The Freetype source code is [available here](http://download.savannah.gnu.org/releases/freetype/).  The instructions for including these new modules in the Xcode project is left as an exercise, but if you follow the pattern of the truetype module in the Xcode project, your module should compile correctly.

The code in this distribution comes from version 2.4.4 of the Freetype library.   


# Install

You can add the project file to the workspace of an existing project by dragging freetype2.xcodeproj to the appropriate place in Xcode.  You then will need to link your target with the libFreetype2.a static library.  Consult the documentation for your version of Xcode for instructions on how to do this.

You can also use the "install.sh" script.  This script will create a universal fat binary for the i386, armv6 and armv7 architectures.  You can then drag the resulting libFreetype.a static library to the open Xcode project you want to use the Freetype library in.

From there, you will need to tell you target project where the Freetype 2 headers are located.  For this, you will need to add a recursive link to the "include/" path of this Freetype source code distribution, to the "Header Search Paths" entry of your Xcode project.  The "Header Search Path" entry needs to be relative to the target project's location on your file system.


# License

This code is distributed under the terms of the [Freetype License](http://www.freetype.org/FTL.TXT).  The Freetype License is also included in this distribution.  If you are going to use code in this project, please make sure you follow the instructions in the Freetype License.