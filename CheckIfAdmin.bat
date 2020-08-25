:: This script will let you know if you are currently logged into an administrator account.

@echo off
goto check_Permissions

:check_Permissions
	echo Administrative permissions required. Detecting permissions...

	net session >nul 2>&1
	if %errorLevel% == 0 (
		echo Success: Administrative permissions confirmed.
	) else (
		echo Failure: Current permissions inadequate.
	)

	pause >nul
