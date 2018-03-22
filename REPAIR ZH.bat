@echo off

color a

if exist Data\Scripts\.         rmdir /S /Q Data\Scripts\

if exist d3d8.txt               del d3d8.txt
if exist d3d8.dll               ren d3d8.dll               d3d8.dat

if exist Install_Final.bmp      ren Install_Final.bmp      Install_Final_tdr.bmp
if exist launcher.bmp           ren launcher.bmp           launcher_tdr.bmp
if exist Install_Final_gzh.bmp  ren Install_Final_gzh.bmp  Install_Final.bmp
if exist launcher_gzh.bmp       ren launcher_gzh.bmp       launcher.bmp

if exist 00_CCTDRDXAI.big       ren 00_CCTDRDXAI.big       00_CCTDRDXAI.tdr
if exist 00_CCTDRDXART.big      ren 00_CCTDRDXART.big      00_CCTDRDXART.tdr
if exist 00_CCTDRDXTERRAIN.big  ren 00_CCTDRDXTERRAIN.big  00_CCTDRDXTERRAIN.tdr
if exist 00_CCTDRDXAUDIO.big    ren 00_CCTDRDXAUDIO.big    00_CCTDRDXAUDIO.tdr
if exist 00_CCTDRDXINI.big      ren 00_CCTDRDXINI.big      00_CCTDRDXINI.tdr
if exist 00_CCTDRDXLANGUAGE.big ren 00_CCTDRDXLANGUAGE.big 00_CCTDRDXLANGUAGE.tdr
if exist 00_CCTDRDXMAPS.big     ren 00_CCTDRDXMAPS.big     00_CCTDRDXMAPS.tdr
if exist 00_CCTDRDXWINDOW.big   ren 00_CCTDRDXWINDOW.big   00_CCTDRDXWINDOW.tdr
if exist 00_CCTDRDXSHADERS.big  ren 00_CCTDRDXSHADERS.big  00_CCTDRDXSHADERS.tdr
if exist 00_CCTDRDXSHADERS2.big ren 00_CCTDRDXSHADERS2.big 00_CCTDRDXSHADERS2.tdr
if exist 01_CCTDRDXPATCH.big    ren 01_CCTDRDXPATCH.big    01_CCTDRDXPATCH.tdr

if exist Shaders2ZH.big         ren Shaders2ZH.big         Shaders2ZH.dat

@ECHO.

goto exit

echo.

:exit
echo.
