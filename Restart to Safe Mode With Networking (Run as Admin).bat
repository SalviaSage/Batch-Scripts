:: Boots to Safe mode with network immediately.
:: Must be ran as administrator or will restart to normal mode instead.

bcdedit /set {current} safeboot network
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce /v "*UndoSB" /t REG_SZ /d "bcdedit /deletevalue {current} safeboot"
SHUTDOWN -r -f -t 07
