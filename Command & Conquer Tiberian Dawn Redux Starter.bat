@echo off

color a

:start /wait evawelcomemessage.wav

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

:evaconsole
cls
echo WELCOME TO THE CNC TIBERIAN DAWN REDUX EVA DATABASE CONSOLE
echo.
echo EVA CONSOLE PROGRAM OPTIONS:
echo.
echo 1. Launch CnC Tiberian Dawn Redux
echo 2. Launch CnC Generals Zero Hour
echo 3. Launch CnC Tiberian Dawn Redux WorldBuilder
echo 4. Launch CnC Generals Zero Hour WorldBuilder
echo 5. Force Enable Mod (use for EA Origin, Game Ranger, and CnC Online ONLY!)
echo 6. Deactivate EVA Database Console (runs cleanup utility)

SET CHOICE=

echo.

SET /P CHOICE=Type in the desired numerical command and press "ENTER": 
IF NOT '%CHOICE%'=='' set choice=%choice:~0,1%
IF '%CHOICE%'=='1' goto tdreduxstart
IF '%CHOICE%'=='2' goto genzhstart
IF '%CHOICE%'=='3' goto wbstart1
IF '%CHOICE%'=='4' goto wbstart2
IF '%CHOICE%'=='5' goto forcemod
IF '%CHOICE%'=='6' goto exit

echo.
echo "%CHOICE%" is an invalid command, please try again or program will terminate.
pause
goto evaconsole

:tdreduxstart
ren Install_Final.bmp Install_Final_gzh.bmp
ren launcher.bmp launcher_gzh.bmp
ren Install_Final_tdr.bmp Install_Final.bmp
ren launcher_tdr.bmp launcher.bmp

ren 00_CCTDRDXAI.tdr 00_CCTDRDXAI.big
ren 00_CCTDRDXART.tdr 00_CCTDRDXART.big
ren 00_CCTDRDXTERRAIN.tdr 00_CCTDRDXTERRAIN.big
ren 00_CCTDRDXAUDIO.tdr 00_CCTDRDXAUDIO.big
ren 00_CCTDRDXINI.tdr 00_CCTDRDXINI.big
ren 00_CCTDRDXLANGUAGE.tdr 00_CCTDRDXLANGUAGE.big
ren 00_CCTDRDXMAPS.tdr 00_CCTDRDXMAPS.big
ren 00_CCTDRDXWINDOW.tdr 00_CCTDRDXWINDOW.big
ren 01_CCTDRDXPATCH.tdr 01_CCTDRDXPATCH.big

if exist Data\Scripts\.         rmdir /S /Q Data\Scripts\

:tdreduxmenu
cls
echo.
echo DYNAMIC SHADER AND SPECIAL EFFECTS SETTINGS:
echo.
echo Select your settings for the dynamic fog and shader effects.
echo (it is STRONGLY RECOMMENDED that users with slower systems select "LOW")
echo.
echo 1. HIGH (activate all enhanced shader effects)
echo 2. MEDIUM (activate enhanced fog and lighting only)
echo 3. LOW (do not activate any special effects)
echo 4. ABORT PROGRAM (return to main menu)

SET CHOICE=

echo.
SET /P CHOICE=Type in the desired numerical command and press "ENTER": 
IF NOT '%CHOICE%'=='' set choice=%choice:~0,1%
IF '%CHOICE%'=='1' goto tdredux1
IF '%CHOICE%'=='2' goto tdredux2
IF '%CHOICE%'=='3' goto tdredux3
IF '%CHOICE%'=='4' goto evaconsole

echo.
echo "%CHOICE%" is an invalid command, please try again or program will terminate.
pause
goto tdreduxmenu

:tdredux1
echo.
if exist d3d8.dat               ren d3d8.dat               d3d8.dll
if exist 00_CCTDRDXSHADERS.tdr  ren 00_CCTDRDXSHADERS.tdr  00_CCTDRDXSHADERS.big
if exist 00_CCTDRDXSHADERS2.tdr ren 00_CCTDRDXSHADERS2.tdr 00_CCTDRDXSHADERS2.big
goto windowmodeselect

:tdredux2
echo.
if exist d3d8.dll               ren d3d8.dll               d3d8.dat
if exist 00_CCTDRDXSHADERS.tdr  ren 00_CCTDRDXSHADERS.tdr  00_CCTDRDXSHADERS.big
if exist 00_CCTDRDXSHADERS2.tdr ren 00_CCTDRDXSHADERS2.tdr 00_CCTDRDXSHADERS2.big
goto windowmodeselect

:tdredux3
echo.
if exist d3d8.dll               ren d3d8.dll               d3d8.dat
if exist 00_CCTDRDXSHADERS.tdr  ren 00_CCTDRDXSHADERS.tdr  00_CCTDRDXSHADERS.big
goto windowmodeselect

echo.

:genzhstart
ren Install_Final.bmp      Install_Final_tdr.bmp
ren launcher.bmp           launcher_tdr.bmp
ren Install_Final_gzh.bmp  Install_Final.bmp
ren launcher_gzh.bmp       launcher.bmp

ren 00_CCTDRDXAI.big       00_CCTDRDXAI.tdr
ren 00_CCTDRDXART.big      00_CCTDRDXART.tdr
ren 00_CCTDRDXTERRAIN.big  00_CCTDRDXTERRAIN.tdr
ren 00_CCTDRDXSHADERS.big  00_CCTDRDXSHADERS.tdr
ren 00_CCTDRDXSHADERS2.big 00_CCTDRDXSHADERS2.tdr
ren 00_CCTDRDXAUDIO.big    00_CCTDRDXAUDIO.tdr
ren 00_CCTDRDXINI.big      00_CCTDRDXINI.tdr
ren 00_CCTDRDXLANGUAGE.big 00_CCTDRDXLANGUAGE.tdr
ren 00_CCTDRDXMAPS.big     00_CCTDRDXMAPS.tdr
ren 00_CCTDRDXWINDOW.big   00_CCTDRDXWINDOW.tdr
ren 01_CCTDRDXPATCH.big    01_CCTDRDXPATCH.tdr

if exist Data\Scripts\.         rmdir /S /Q Data\Scripts\

:genzhmenu
cls
echo.
echo DYNAMIC SHADER ACTIVATION:
echo.
echo Would you like the dynamic fog and shader effects activated?
echo (it is STRONGLY recommended that users with low spec systems select "NO")
echo.
echo 1. YES (activate)
echo 2. NO (deactivate)
echo 3. ABORT PROGRAM (return to main menu)

SET CHOICE=

echo.

SET /P CHOICE=Type in the desired numerical command and press "ENTER": 
IF NOT '%CHOICE%'=='' set choice=%choice:~0,1%
IF '%CHOICE%'=='1' goto genzh1
IF '%CHOICE%'=='2' goto genzh2
IF '%CHOICE%'=='3' goto evaconsole

echo.
echo "%CHOICE%" is an invalid command, please try again or program will terminate.
pause

cls
goto genzhmenu


:genzh1
echo.
if exist d3d8.dat ren d3d8.dat d3d8.dll
goto windowmodeselect

:genzh2
echo.
if exist d3d8.dll ren d3d8.dll d3d8.dat
goto windowmodeselect

echo.

:wbstart1
ren Install_Final.bmp      Install_Final_gzh.bmp
ren launcher.bmp           launcher_gzh.bmp
ren Install_Final_tdr.bmp  Install_Final.bmp
ren launcher_tdr.bmp       launcher.bmp

ren 00_CCTDRDXAI.tdr       00_CCTDRDXAI.big
ren 00_CCTDRDXART.tdr      00_CCTDRDXART.big
ren 00_CCTDRDXTERRAIN.tdr  00_CCTDRDXTERRAIN.big
ren 00_CCTDRDXSHADERS.tdr  00_CCTDRDXSHADERS.big
ren 00_CCTDRDXSHADERS2.tdr 00_CCTDRDXSHADERS2.big
ren 00_CCTDRDXAUDIO.tdr    00_CCTDRDXAUDIO.big
ren 00_CCTDRDXINI.tdr      00_CCTDRDXINI.big
ren 00_CCTDRDXLANGUAGE.tdr 00_CCTDRDXLANGUAGE.big
ren 00_CCTDRDXMAPS.tdr     00_CCTDRDXMAPS.big
ren 00_CCTDRDXWINDOW.tdr   00_CCTDRDXWINDOW.big
ren 01_CCTDRDXPATCH.tdr    01_CCTDRDXPATCH.big


:wbstartmenu1
cls
echo.
echo DYNAMIC SHADER ACTIVATION:
echo.
echo Would you like the dynamic fog and shader effects activated?
echo (it is STRONGLY recommended that users with low spec systems select "NO")
echo.
echo 1. YES (activate)
echo 2. NO (deactivate)
echo 3. ABORT PROGRAM (return to main menu)

SET CHOICE=

echo.
SET /P CHOICE=Type in the desired numerical command and press "ENTER": 
IF NOT '%CHOICE%'=='' set choice=%choice:~0,1%
IF '%CHOICE%'=='1' goto worldbuilder1_1
IF '%CHOICE%'=='2' goto worldbuilder1_2
IF '%CHOICE%'=='3' goto evaconsole

echo.
echo "%CHOICE%" is an invalid command, please try again or program will terminate.
pause

goto wbstartmenu1

echo.

:worldbuilder1_1
echo.
echo Initializing executables for the WorldBuilder Program, please stand by...
echo WARNING! DO NOT CLOSE THIS WINDOW!
if exist d3d8.dat ren d3d8.dat d3d8.dll
if exist 00_CCTDRDXSHADERS.tdr  ren 00_CCTDRDXSHADERS.tdr  00_CCTDRDXSHADERS.big
if exist 00_CCTDRDXSHADERS2.tdr ren 00_CCTDRDXSHADERS2.tdr 00_CCTDRDXSHADERS2.big
start /wait WorldBuilder.exe
goto evaconsole

:worldbuilder1_2
echo.
echo Initializing executables for the WorldBuilder Program, please stand by...
echo WARNING! DO NOT CLOSE THIS WINDOW!
if exist d3d8.dll ren d3d8.dll d3d8.dat
if exist 00_CCTDRDXSHADERS.big  ren 00_CCTDRDXSHADERS.big  00_CCTDRDXSHADERS.tdr
if exist 00_CCTDRDXSHADERS2.big ren 00_CCTDRDXSHADERS2.big 00_CCTDRDXSHADERS2.tdr
start /wait WorldBuilder.exe
goto evaconsole

echo.

:wbstart2
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

:wbstartmenu2
cls
echo.
echo DYNAMIC SHADER ACTIVATION:
echo.
echo Would you like the dynamic fog and shader effects activated?
echo (it is STRONGLY recommended that users with low spec systems select "NO")
echo.
echo 1. YES (activate)
echo 2. NO (deactivate)
echo 3. ABORT PROGRAM (return to main menu)

SET CHOICE=

echo.
SET /P CHOICE=Type in the desired numerical command and press "ENTER": 
IF NOT '%CHOICE%'=='' set choice=%choice:~0,1%
IF '%CHOICE%'=='1' goto worldbuilder2_1
IF '%CHOICE%'=='2' goto worldbuilder2_2
IF '%CHOICE%'=='3' goto evaconsole

echo.
echo "%CHOICE%" is an invalid command, please try again or program will terminate.
pause
goto wbstartmenu2


:worldbuilder2_1
echo.
echo Initializing executables for the WorldBuilder Program, please stand by...
echo WARNING! DO NOT CLOSE THIS WINDOW!
if exist d3d8.dat ren d3d8.dat d3d8.dll
start /wait WorldBuilder.exe
goto evaconsole

:worldbuilder2_2
echo.
echo Initializing executables for the WorldBuilder Program, please stand by...
echo WARNING! DO NOT CLOSE THIS WINDOW!
if exist d3d8.dll ren d3d8.dll d3d8.dat
if exist 00_CCTDRDXSHADERS.big  ren 00_CCTDRDXSHADERS.big  00_CCTDRDXSHADERS.tdr
if exist 00_CCTDRDXSHADERS2.big ren 00_CCTDRDXSHADERS2.big 00_CCTDRDXSHADERS2.tdr
start /wait WorldBuilder.exe
goto evaconsole

echo.

:windowmodeselect
cls
echo.
echo HIGH DEFINITION SCREEN RESOLUTION OPTIONS:
echo.
echo Do you wish to run the program in the 1920x1080 High Definition Format?
echo.
echo 1. YES (activate)
echo 2. NO (deactivate)
echo 3. ABORT PROGRAM (return to main menu)

SET CHOICE=

echo.
SET /P CHOICE=Type in the desired numerical command and press "ENTER": 
IF NOT '%CHOICE%'=='' set choice=%choice:~0,1%
IF '%CHOICE%'=='1' goto windowmode1
IF '%CHOICE%'=='2' goto windowmode2
IF '%CHOICE%'=='3' goto evaconsole

echo.
echo "%CHOICE%" is an invalid command, please try again or program will terminate.
pause
goto windowmodeselect

:windowmode1
echo.
echo Initializing program, please stand by...
echo WARNING! DO NOT CLOSE THIS WINDOW!
start /wait generals.exe -xres 1920 -yres 1080
goto exit

:windowmode2
echo.
echo Initializing program, please stand by...
echo WARNING! DO NOT CLOSE THIS WINDOW!
start /wait generals.exe
goto exit
echo.


:forcemod
echo.
if exist Install_Final.bmp      ren Install_Final.bmp      Install_Final_gzh.bmp
if exist launcher.bmp           ren launcher.bmp           launcher_gzh.bmp
if exist Install_Final_tdr.bmp  ren Install_Final_tdr.bmp  Install_Final.bmp
if exist launcher_tdr.bmp       ren launcher_tdr.bmp       launcher.bmp

if exist 00_CCTDRDXAI.tdr       ren 00_CCTDRDXAI.tdr       00_CCTDRDXAI.big
if exist 00_CCTDRDXART.tdr      ren 00_CCTDRDXART.tdr      00_CCTDRDXART.big
if exist 00_CCTDRDXTERRAIN.tdr  ren 00_CCTDRDXTERRAIN.tdr  00_CCTDRDXTERRAIN.big
if exist 00_CCTDRDXAUDIO.tdr    ren 00_CCTDRDXAUDIO.tdr    00_CCTDRDXAUDIO.big
if exist 00_CCTDRDXINI.tdr      ren 00_CCTDRDXINI.tdr      00_CCTDRDXINI.big
if exist 00_CCTDRDXLANGUAGE.tdr ren 00_CCTDRDXLANGUAGE.tdr 00_CCTDRDXLANGUAGE.big
if exist 00_CCTDRDXMAPS.tdr     ren 00_CCTDRDXMAPS.tdr     00_CCTDRDXMAPS.big
if exist 00_CCTDRDXWINDOW.tdr   ren 00_CCTDRDXWINDOW.tdr   00_CCTDRDXWINDOW.big
if exist 00_CCTDRDXSHADERS.tdr  ren 00_CCTDRDXSHADERS.tdr  00_CCTDRDXSHADERS.big
if exist 00_CCTDRDXSHADERS2.tdr ren 00_CCTDRDXSHADERS2.tdr 00_CCTDRDXSHADERS2.big
if exist 01_CCTDRDXPATCH.tdr    ren 01_CCTDRDXPATCH.tdr    01_CCTDRDXPATCH.big

if exist d3d8.txt               del d3d8.txt
if exist d3d8.dll               ren d3d8.dll               d3d8.dat

if exist Shaders2ZH.big         ren Shaders2ZH.big         Shaders2ZH.dat

if exist Data\Scripts\.         rmdir /S /Q Data\Scripts\

echo *** MOD IS NOW FORCE ENABLED, YOU MAY CLOSE THIS TERMINAL ***
pause
goto evaconsole
echo.


:exit
echo.
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

if exist d3d8.txt               del d3d8.txt
if exist d3d8.dll               ren d3d8.dll               d3d8.dat

if exist Shaders2ZH.big         ren Shaders2ZH.big         Shaders2ZH.dat

if exist Data\Scripts\.         rmdir /S /Q Data\Scripts\

echo *** EVA CONSOLE TERMINATED ***
echo.
