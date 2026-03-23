@echo off
if exist sabot0.bin del sabot0.bin
if exist sabot0.inc del sabot0.inc
if exist sabot1.bin del sabot1.bin
if exist sabot1.txt del sabot1.txt
if exist sabot1.zx0 del sabot1.zx0
if exist sabot1.rom del sabot1.rom

rem Define ESCchar to use in ANSI escape sequences
rem https://stackoverflow.com/questions/2048509/how-to-echo-with-different-colors-in-the-windows-command-line
for /F "delims=#" %%E in ('"prompt #$E# & for %%E in (1) do rem"') do set "ESCchar=%%E"

echo Compiling sabot0 first pass...
tools\sjasmplus --nologo --msg=war --i8080 sabot0.asm --lst=sabot0.lst --exp=sabot0.inc -DLZSIZE1=19000
if errorlevel 1 goto Failed

dir /-c sabot0.bin|findstr /R /C:"sabot0.bin"

echo Compiling code...
tools\sjasmplus --nologo --msg=war --i8080 sabot1.asm --lst=sabot1.lst
if errorlevel 1 goto Failed

dir /-c sabot1.bin|findstr /R /C:"sabot1.bin"

tools\salvador.exe -classic sabot1.bin sabot1.zx0

dir /-c sabot1.zx0|findstr /R /C:"sabot1.zx0"

call :FileSize sabot1.zx0
set lzsize1=%fsize%

echo Compiling sabot0 second pass...
tools\sjasmplus --nologo --msg=war --i8080 sabot0.asm --lst=sabot0.lst --exp=sabot0.inc -DLZSIZE1=%lzsize1%
if errorlevel 1 goto Failed

copy /b sabot0.bin+sabot1.zx0 sabot1.rom >nul

dir /-c sabot1.rom|findstr /R /C:"sabot1.rom"

echo %ESCchar%[92mSUCCESS%ESCchar%[0m
exit

:Failed
@echo off
echo %ESCchar%[91mFAILED%ESCchar%[0m
exit /b

:FileSize
set fsize=%~z1
exit /b 0
