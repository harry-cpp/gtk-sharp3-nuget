#!/bin/sh

# update submodules
git submodule init
git submodule update

# make gtk-sharp
cd gtk-sharp
sh autogen.sh
make

# make nuget
cd ..
nuget pack gtk-sharp3.nuspec
