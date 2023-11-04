@echo off
:menu
cls
color 0A
title Optimizing PC @MAXMASTO2
echo.
echo.
echo                                   OPTIMIZING PC @MAXMASTO2
echo.
echo                        [+]---------------------------------------[+]
echo                        [+]                                       [+]
echo                        [+]          PC Optimization Menu         [+]
echo                        [+]                                       [+]
echo                        [+]---------------------------------------[+]
echo.

echo.
echo               [+] 1. Clean Windows temporary files       [+] 2. Clean user temporary files
echo               [+] 3. Clean Windows Update cleanup        [+] 4. Empty the Recycle Bin
echo               [+] 5. Optimize startup                    [+] 6. Disable Full-screen Exclusive
echo               [+] 7. Enable Ultimate Performance Plan    [+] 8. Optimize for Best Performance
echo               [+] 9. Disable Startup Delay               [+] 10. Disable Last Access Update
echo               [+] 11. Optimize System Responsiveness     [+] 12. Reduce Foreground Lock Timeout
echo               [+] 13. Reset Network Stack                [+] 14. Restore Health
echo               [+] 15. Exit
echo               [+] (A) About me
echo.
echo.
set /p choice=Enter the number of your choice: 

if "%choice%"=="1" (
    echo Cleaning Windows temporary files...
    del /s /q %SystemRoot%\Temp\*.*
    pause
    goto menu
)

if "%choice%"=="2" (
    echo Cleaning user temporary files...
    del /s /q %TEMP%\*.*
    pause
    goto menu
)

if "%choice%"=="3" (
    echo Cleaning Windows Update cleanup...
    Cleanmgr /sagerun:1
    pause
    goto menu
)

if "%choice%"=="4" (
    echo Emptying the Recycle Bin...
    rd /s /q C:\$Recycle.Bin
    pause
    goto menu
)

if "%choice%"=="5" (
    echo Optimizing startup...
    echo Disabling unnecessary startup programs...
    for /f "tokens=*" %%I in ('wmic startup list full ^| find /I "C:\Program Files"') do (
        wmic startup set caption=%%I disabled
    )

    echo Disabling unnecessary services...
    sc config "wuauserv" start=disabled
    sc config "wsearch" start=disabled
    sc config "Themes" start=disabled

    echo Cleanup and optimization complete.
    pause
    goto menu
)

if "%choice%"=="6" (
    echo Disabling Full-screen Exclusive...
    reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Direct3D" /v "DisableFullScreenExclusiveMode" /t REG_DWORD /d 1 /f
    echo Full-screen Exclusive mode has been disabled.
    pause
    goto menu
)

if "%choice%"=="7" (
    echo Enabling Ultimate Performance power plan...
    powercfg -duplicatescheme 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
    powercfg -setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
    echo Ultimate Performance power plan has been enabled.
    pause
    goto menu
)

if "%choice%"=="8" (
    echo Optimizing for Best Performance...
    reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v VisualFXSetting /t REG_DWORD /d 2 /f
    echo System performance has been optimized for Best Performance.
    pause
    goto menu
)

if "%choice%"=="9" (
    echo Disabling Startup Delay...
    reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "StartupDelayInMSec" /t REG_DWORD /d 0 /f
    echo Startup delay has been disabled.
    pause
    goto menu
)

if "%choice%"=="10" (
    echo Disabling Last Access Update...
    reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsDisableLastAccessUpdate" /t REG_DWORD /d 1 /f
    echo Last Access Update has been disabled.
    pause
    goto menu
)

if "%choice%"=="11" (
    echo Optimizing System Responsiveness...
    reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "SystemResponsiveness" /t REG_DWORD /d 1 /f
    echo System responsiveness has been optimized.
    pause
    goto menu
)

if "%choice%"=="12" (
    echo Reducing Foreground Lock Timeout...
    reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control" /v "ForegroundLockTimeout" /t REG_DWORD /d 0 /f
    echo Foreground Lock Timeout has been reduced.
    pause
    goto menu
)

if "%choice%"=="13" (
    echo Resetting Network Stack...
    ipconfig /flushdns
    netsh int ip reset
    netsh winsock reset
    netsh winhttp reset proxy
    netsh winsock reset
    netsh int ip reset
    netsh int ipv4 reset
    netsh int ipv6 reset
    echo Network stack has been reset.
    pause
    goto menu
)

if "%choice%"=="14" (
    echo Restoring PC Health...
    DISM /Online /Cleanup-Image /RestoreHealth
    pause
    goto menu
)

if "%choice%"=="15" (
    echo Exiting script...
    exit
)

if /i "%choice%"=="A" (
    start https://maxmasto.max652535.repl.co/
    goto menu
)
