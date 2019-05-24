ECHO ON
REM Running the Nautilus PanelDue Firmware Maker script
cd G:\My Drive\Nautilus 3D Printers\Nautilus\PanelDue Firmware\PanelDueFirmwareMakerResources

magick "..\PanelDueFirmwareResourcesInput\Nautilus Splash Screen.png" NautilusSplashScreen.bmp
bmp2c-escher3d.exe NautilusSplashScreen.bmp NautilusSplashScreen.bin -b -c
SET /P Firmware_File_Name= Please enter the desired firmware file name:
copy /b ..\PanelDueFirmwareResourcesInput\PanelDue-5.0i-7.0i-nologo.bin+NautilusSplashScreen.bin ..\PanelDueNautilusFirmware\%Firmware_File_Name%.bin
pause
