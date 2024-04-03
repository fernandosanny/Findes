@echo off
setlocal

echo .
echo -----------------------------
echo   Findes Runtime Installer
echo   maintained by [ SDF ] 
echo   revision 1.0
echo -----------------------------

pause

set "CRRedist2008_x64=CRRedist2008_x64.msi"
set "CRRedist2008_x86=CRRedist2008_x86.msi"
set "dotnetfx=dotnetfx(2).exe"
set "NDP452=NDP452-KB2901907-x86-x64-AllOS-ENU.exe"
set "NetFx64=NetFx64.exe"

rem Install CRRedist2008_x64
echo Installing CRRedist2008_x64...
msiexec /i "%CRRedist2008_x64%"

rem Install CRRedist2008_x86
echo Installing CRRedist2008_x86...
msiexec /i "%CRRedist2008_x86%"

rem Install dotnetfx
echo Installing dotnetfx...
"%dotnetfx%"

rem Install NDP452
echo Installing NDP452...
"%NDP452%"

rem Install NetFx64
echo Installing NetFx64...
"%NetFx64%"

echo Installation complete.
pause
