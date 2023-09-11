@echo off
setlocal

echo This script will erase the contents of a removable USB drive.
echo Make sure you have a backup of any important files before proceeding.
echo.

set /p drive="Enter the drive letter of the USB drive you want to erase (e.g., E): "
set "drive=%drive:~0,1%"
set "drive=%drive:~0,1%"
set "drive=%drive:~0,1%"
echo.

echo Are you sure you want to erase the USB drive %drive%? (Y/N)
set /p confirm=

if /i "%confirm%"=="Y" (
    echo Erasing the USB drive %drive%...
    del /F /Q %drive%:\*.*
    echo.
    echo The contents of the USB drive %drive% have been erased.
) else (
    echo Operation canceled. No changes were made.
)

endlocal