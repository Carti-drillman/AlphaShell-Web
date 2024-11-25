@echo off
echo Starting AlphaShell installation...

:: Define variables
set SOURCE_FILE=alphashell.c
set EXECUTABLE=alphashell.exe
set INSTALL_DIR="C:\Program Files\AlphaShell"

:: Check for MinGW compiler
where gcc >nul 2>&1
if errorlevel 1 (
    echo Error: GCC is not installed. Please install GCC or MinGW and try again.
    exit /b 1
)

:: Compile the source code
echo Compiling AlphaShell...
gcc -o %EXECUTABLE% %SOURCE_FILE%
if errorlevel 1 (
    echo Error: Compilation failed.
    exit /b 1
)

:: Create installation directory if it doesn't exist
if not exist "%INSTALL_DIR%" (
    mkdir "%INSTALL_DIR%"
)

:: Move the executable to the installation directory
echo Installing AlphaShell to %INSTALL_DIR%...
move /y %EXECUTABLE% "%INSTALL_DIR%"
if errorlevel 0 (
    echo AlphaShell installed successfully!
    echo Add "%INSTALL_DIR%" to your PATH to use AlphaShell globally.
) else (
    echo Error: Installation failed. Please check permissions or try again.
    exit /b 1
)
