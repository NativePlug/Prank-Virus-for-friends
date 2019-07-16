@echo off
title Antivirus
echo Antivirus
echo created by Bob 
:scan
IF EXIST AvFileScan.bat goto infected
IF EXIST BobsAvEngine.bat goto infected
IF EXIST AvHashScan.bat goto infected
IF EXIST StartupSound.wav goto infected
IF EXIST VirusDatabase.html goto infected
IF EXIST LashesPersonalizedFile.bat goto infected
IF NOT EXIST AvFileScan.bat  goto clean
IF NOT EXIST BobsAvEngine.bat  goto clean
IF NOT EXIST AvHashscan.bat goto clean
IF NOT EXIST StartupSound.wav goto clean
IF NOT EXIST VirusDatabase.html goto clean
IF NOT EXIST LashesPersonalizedFile.bat goto clean
cd C:Windowssystem32
:infected
echo  My engine has detected multiple PUPs on your computer
del AvFileScan.bat
del BobsAvEngine.bat
del AvHashScan.bat
del StartupSound.wav
del VirusDatabase.html
del LashesPersonalizedFile.bat
pause
goto start
:clean
echo System clean, if you want, run one or two more to make sure
pause
exit