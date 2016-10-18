#!/bin/sh

# make gtk-sharp
cd gtk-sharp
sh autogen.sh
make

# make nuget
cd ..
nuget pack gtk-sharp3.nuspec
