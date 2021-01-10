@echo off

echo Project cleaning...
make clean
echo ...done

echo Compiling RayTracer...
make
echo ...done

set TARGET=build\Mini-Rasterizer.exe
set IMAGE=image.tga
set PS="C:\Program Files\Adobe\Adobe Photoshop CC 2015\Photoshop.exe"

echo Rendering image...
cd build
Mini-Rasterizer.exe
echo ...done

echo Openning image file in photoshop...
%PS% %CD%\%IMAGE%
echo ...done
