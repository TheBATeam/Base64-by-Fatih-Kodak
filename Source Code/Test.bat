@Echo off
cls
Set "Path=%Path%;%cd%;%CD%\files"

Title Base64 Usage DEMO - www.thebateam.org

Set "File=Demo.base64"

Color 07
Echo.
Echo. Encrypted File Name: "%File%"
echo.
base64 -d "%file%" "TheBATeam LOGO - Decrypted.png"

If /I "%Errorlevel%" NEQ "0" (Color 0C&&Echo. ERROR OCCURRED while Decrypting File. &&Goto :End)
Color 0A
Echo. Decrypting....
Echo. Done!
Echo.
Echo.
Echo. Check if the Decrypted file is Generated in the Same Folder?
Echo. Try opening it, Press any Key to Exit...

:End
Pause>nul

Exit