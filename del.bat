Del /F /Q %APPDATA%\Microsoft\Windows\Recent\*

Del /F /Q %APPDATA%\Microsoft\Windows\Recent\AutomaticDestinations\*

Del /F /Q %APPDATA%\Microsoft\Windows\Recent\CustomDestinations\*


reg query HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RunMRU
if not ErrorLevel 1 reg delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RunMRU /F

reg query HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\TypedPaths
if not ErrorLevel 1 reg delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\TypedPaths /F

echo Done. Deleted All.
pause