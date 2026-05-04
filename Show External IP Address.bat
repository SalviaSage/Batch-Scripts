@echo off
REM ============================================
REM Batch Script: Show External (Public) IP Address
REM Requires: Windows 10/11 with curl installed
REM ============================================

REM Fetch the external IP from a reliable service
REM Using api.ipify.org (returns plain text IP)
for /f "usebackq tokens=* delims=" %%A in (`curl -s https://api.ipify.org`) do (
    set "PUBLIC_IP=%%A"
)

REM Validate if we got a response
if "%PUBLIC_IP%"=="" (
    echo Failed to retrieve external IP address.
    echo Please check your internet connection.
    exit /b 1
)

REM Display the result
echo Your External (Public) IP Address is: %PUBLIC_IP%

pause
