@echo off
if not "%1" == "max" start /MAX cmd /c %0 max & exit/b
@echo off
::Exm free tweaking utility v9.0 | Made and distributed by EXM TWEAKS, S.R.O. ® 2025

:: Color Codes
set w=[97m
set g=[90m
set p=[95m
set b=[96m
set o=[1m

:: Enabling ANSI Escape Sequences
Reg.exe add "HKCU\CONSOLE" /v "VirtualTerminalLevel" /t REG_DWORD /d "1" /f  > nul

::Enabling Delayed Expansion
setlocal EnabledelayedExpansion > nul
cls 


chcp 65001 >nul 2>&1



:d12
cls
echo.
echo.
echo.
echo.                                                                  %p%██╗   ██╗███╗  ██╗██╗███╗  ██╗ ██████╗████████╗ █████╗ ██╗     ██╗     
echo.                                                                  %p%██║   ██║████╗ ██║██║████╗ ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║     
echo.                                                                  %p%██║   ██║██╔██╗██║██║██╔██╗██║╚█████╗    ██║   ███████║██║     ██║     
echo.                                                                  %p%██║   ██║██║╚████║██║██║╚████║ ╚═══██╗   ██║   ██╔══██║██║     ██║     
echo.                                                                  %p%╚██████╔╝██║ ╚███║██║██║ ╚███║██████╔╝   ██║   ██║  ██║███████╗███████╗
echo.                                                                  %p% ╚═════╝ ╚═╝  ╚══╝╚═╝╚═╝  ╚══╝╚═════╝    ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝
echo.                                                           %b%"════════════════════════════════════════════════════════════════════════════════"%w%
echo.      
echo.                                                                             %p%[%w%1%p%]%w% Uninstall Windows Preinstalled Apps    
echo.  
echo.                                                                             %p%[%w%2%p%]%w% Uninstall Useless Apps Via settings
echo.
echo.                                                                             %p%[%w%3%p%]%w% Uninstall Microsoft edge
echo.
echo.                                                                             %p%[%w%4%p%]%w% Uninstall Cortana / Copilot
echo.
echo.
echo.                                                                                        %p%[%w%R%p%]%w% Revert                          
echo.                                                                                           
echo.                                                                                        %p%[%w%X%p%]%w% Exit
echo.                                                                                          
echo.                                                           %b%"════════════════════════════════════════════════════════════════════════════════"
echo.                                                                        %W%You can use this to uninstall useless preinstalled windows apps 
echo.                                                           %b%"════════════════════════════════════════════════════════════════════════════════"
echo.               
set /p input=:
if /i %input% == 1 goto U1
if /i %input% == 2 goto U2
if /i %input% == 3 goto U3
if /i %input% == 4 goto U4
if /i %input% == R goto revertapps
if /i %input% == X cls & goto menu

) ELSE (
echo Invalid Input & goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
goto RedirectMenu


:RedirectMenu
cls
goto d12

:u4
echo %w% - Uninstalling Cortana / Copilot%b%

chcp 437 >nul 
timeout /t 1 /nobreak > NUL
Powershell -Command "Get-appxpackage -allusers *Microsoft.549981C3F5F10* | Remove-AppxPackage"
Powershell -Command "Get-AppxPackage Microsoft.Windows.Ai.Copilot.Provider | Remove-AppxPackage" 
timeout /t 1 /nobreak > NUL
chcp 65001 >nul 
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto menu


:u3
cls
echo.
echo.
echo.
echo.                                                                     %p% ███████╗██████╗  ██████╗ ███████╗
echo.                                                                     %p% ██╔════╝██╔══██╗██╔════╝ ██╔════╝
echo.                                                                     %p% █████╗  ██║  ██║██║  ██╗ █████╗  
echo.                                                                     %p% ██╔══╝  ██║  ██║██║  ╚██╗██╔══╝  
echo.                                                                     %p% ███████╗██████╔╝╚██████╔╝███████╗
echo.                                                                     %p% ╚══════╝╚═════╝  ╚═════╝ ╚══════╝ 
echo.                                        %b%"═══════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                
echo.                                             %p%[%w%1%p%]%w% Uninstall microsoft edge        %p%[%w%2%p%]%w% Install microsoft edge
echo.                                                                                 
echo.   
echo.                                                                   %p%[%w%M%p%]%w% Skip and go Back to menu   
echo.
echo.                                        %b%"═══════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                 %W%Completely uninstalls microsoft edge, there is a revert for this
echo.                                                %W% But unfortunatly the revert doesnt work 100% of the time
echo.                                        %b%"═══════════════════════════════════════════════════════════════════════════════"%w%
echo. 
echo. 

set /p input=:
if /i %input% == 1 goto edgingoff
if /i %input% == 2 goto edgingon
if /i %input% == M CLS & goto d12

) ELSE (
echo Invalid Input & goto MisspellRedirect 

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
goto RedirectMenue
:RedirectMenu
cls
goto :edging

:edgingoff
echo %w% - Disabling Microsoft edging  %b%
taskkill /f /im msedge.exe >nul 2>&1
taskkill /f /im msedge.exe /fi "IMAGENAME eq msedge.exe" >nul 2>&1
taskkill /f /im msedge.exe /fi "IMAGENAME eq msedge.exe" >nul 2>&1
echo Deleting Edge Directories.
rd /s /q "C:\Program Files (x86)\Microsoft\Edge" >nul 2>&1
rd /s /q "C:\Program Files (x86)\Microsoft\EdgeCore" >nul 2>&1
rd /s /q "C:\Program Files (x86)\Microsoft\EdgeUpdate" >nul 2>&1
rd /s /q "C:\Program Files (x86)\Microsoft\EdgeWebView" >nul 2>&1
rd /s /q "C:\Program Files (x86)\Microsoft\Temp" >nul 2>&1
echo Deleting Microsoft Edge Shortcuts.
del "C:\Users\Public\Desktop\Microsoft Edge.lnk" >nul 2>&1
del "%ProgramData%\Microsoft\Windows\Start Menu\Programs\Microsoft Edge.lnk" >nul 2>&1
del "%APPDATA%\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\Microsoft Edge.lnk" >nul 2>&1
cls


echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto d12

:edgingon
echo %w% - Reinstalling Microsoft edge %g%(may not work 100% of the time, if it doesnt, use a restore point) %b%
chcp 437 >nul 
powershell:Start-Process -FilePath winget -ArgumentList "install --force  --accept-source-agreements --accept-package-agreements --silent Microsoft.Edge " -NoNewWindow
chcp 65001 >nul 
cls
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto d12

:revertapps
CLS
echo.
echo.
echo.
echo.                                                                %p%██████╗ ███████╗██╗   ██╗███████╗██████╗ ████████╗██╗███╗  ██╗ ██████╗          
echo.                                                                %p%██╔══██╗██╔════╝██║   ██║██╔════╝██╔══██╗╚══██╔══╝██║████╗ ██║██╔════╝          
echo.                                                                %p%██████╔╝█████╗  ╚██╗ ██╔╝█████╗  ██████╔╝   ██║   ██║██╔██╗██║██║  ██╗          
echo.                                                                %p%██╔══██╗██╔══╝   ╚████╔╝ ██╔══╝  ██╔══██╗   ██║   ██║██║╚████║██║  ╚██╗         
echo.                                                                %p%██║  ██║███████╗  ╚██╔╝  ███████╗██║  ██║   ██║   ██║██║ ╚███║╚██████╔╝██╗██╗██╗
echo.                                                                %p%╚═╝  ╚═╝╚══════╝   ╚═╝   ╚══════╝╚═╝  ╚═╝   ╚═╝   ╚═╝╚═╝  ╚══╝ ╚═════╝ ╚═╝╚═╝╚═╝
echo.
echo. 
echo %w% - Redownload default windows apps %g%(Errors may show, thats because the app that the command is trying to install is already installed, so dont worry)%b%
chcp 437 > nul
Powershell -Command "Get-AppxPackage -allusers | foreach {Add-AppxPackage -register “$($_.InstallLocation)\appxmanifest.xml” -DisabledevelopmentMode}"

powershell:Start-Process -FilePath winget -ArgumentList "install --force  --accept-source-agreements --accept-package-agreements --silent Microsoft.Edge " -NoNewWindow
chcp 65001 > nul
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
zecho.
pause > nul
cls
goto menu

:U2
start ms-settings:appsfeatures
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
goto d12

:U1
chcp 437 >nul
CLS
echo.
echo.
echo [                             0%                            ]
echo.
echo %w%- Uninstalling BingWeather %g% (Removing Preinstalled Apps) %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.BingWeather* | Remove-AppxPackage}
CLS

echo.
echo.
echo [==                           3.5%                          ]
echo.
echo %w%- Uninstalling GetHelp  %g% (Removing Preinstalled Apps) %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.GetHelp* | Remove-AppxPackage}
CLS

echo.
echo.
echo [====                         7.0%                          ]
echo.
echo %w%- Uninstalling Getstarted  %g% (Removing Preinstalled Apps) %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.Getstarted* | Remove-AppxPackage}
CLS

echo.
echo.
echo [=====                        10.5%                         ]
echo.
echo %w%- Uninstalling Messaging  %g% (Removing Preinstalled Apps) %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.Messaging* | Remove-AppxPackage}
CLS

echo.
echo.
echo [======                       14.5%                         ]
echo.
echo %w%- Uninstalling Messaging  %g% (Removing Preinstalled Apps) %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.Microsoft3DViewer* | Remove-AppxPackage}
CLS

echo.
echo.
echo [========                     18.0%                         ]
echo.
echo %w%- Uninstalling MicrosoftSolitaireCollection %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *Microsoft.MicrosoftSolitaireCollection* | Remove-AppxPackage}
CLS 

echo.
echo.
echo [==========                   21.5%                         ]
echo.
echo %w%- Uninstalling MicrosoftStickyNotes %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *Microsoft.MicrosoftStickyNotes* | Remove-AppxPackage}
CLS

echo.
echo.
echo [============                 24.5%                         ]
echo.
echo %w%- Uninstalling MixedReality.Portal %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *Microsoft.MixedReality.Portal* | Remove-AppxPackage}
CLS

echo.
echo.
echo [==============               27.0%                         ]
echo.
echo %w%- Uninstalling OneConnect %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *Microsoft.OneConnect* | Remove-AppxPackage}
CLS

echo.
echo.
echo [===============              28.5%                         ]
echo.
echo %w%- Uninstalling People %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *Microsoft.People* | Remove-AppxPackage}
CLS

echo.
echo.
echo [==================           30.5%                         ]
echo.
echo %w%- Uninstalling Print3D %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *Microsoft.Print3D* | Remove-AppxPackage}
CLS

echo.
echo.
echo [===================           32.0%                        ]
echo.
echo %w%- Uninstalling SkypeApp %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *Microsoft.SkypeApp* | Remove-AppxPackage}
CLS

echo.
echo.
echo [====================         34.0%                         ]
echo.
echo %w%- Uninstalling WindowsAlarms %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *Microsoft.WindowsAlarms* | Remove-AppxPackage}
CLS

echo.
echo.
echo [=====================        35.2%                         ]
echo.
echo %w%- Uninstalling WindowsCamera %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *Microsoft.WindowsCamera* | Remove-AppxPackage}
CLS

echo.
echo.
echo [======================       37.5%                         ]
echo.
echo %w%- Uninstalling windowscommunicationsapps %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *microsoft.windowscommunicationsapps* | Remove-AppxPackage}
CLS

echo.
echo.
echo [=======================      38.8%                         ]
echo.
echo %w%- Uninstalling WindowsMaps %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *Microsoft.WindowsMaps* | Remove-AppxPackage}
CLS

echo.
echo.
echo [========================     40.0%                         ]
echo.
echo %w%- Uninstalling WindowsFeedbackHub %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *Microsoft.WindowsFeedbackHub* | Remove-AppxPackage}
CLS

echo.
echo.
echo [=========================    42.2%                         ]
echo.
echo %w%- Uninstalling WindowsSoundRecorder %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *Microsoft.WindowsSoundRecorder* | Remove-AppxPackage}
CLS

echo.
echo.
echo [=========================    44.5%                         ]
echo.
echo %w%- Uninstalling YourPhone %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *Microsoft.YourPhone* | Remove-AppxPackage}
CLS

echo.
echo.
echo [===========================  47.0%                         ]
echo.
echo %w%- Uninstalling ZuneMusic %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *Microsoft.ZuneMusic* | Remove-AppxPackage}
CLS

echo.
echo.
echo [===========================  49.0%                         ]
echo.
echo %w%- Uninstalling HEIFImageExtension %g% (Removing Preinstalled Apps) %b%

PowerShell -command "& {Get-AppxPackage *Microsoft.HEIFImageExtension* | Remove-AppxPackage}
CLS

echo.
echo.
echo [=============================51.0%                         ]
echo.
echo %w%- Uninstalling WebMediaExtensions %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *Microsoft.WebMediaExtensions* | Remove-AppxPackage}
CLS

echo.
echo.
echo [=============================53.5%==                       ]
echo.
echo %w%- Uninstalling WebpImageExtension %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *Microsoft.WebpImageExtension* | Remove-AppxPackage}
CLS

echo.
echo.
echo [=============================56.7%====                     ]
echo.
echo %w%- Uninstalling 3dBuilder %g% (Removing Preinstalled Apps) %b%
PowerShell -command "& {Get-AppxPackage *Microsoft.3dBuilder* | Remove-AppxPackage}
CLS

echo.
echo.
echo [=============================59.5%======                   ]
echo.
echo %w%- Uninstalling bing %g% (Removing Preinstalled Apps) %b%
PowerShell -Command "Get-AppxPackage -allusers *bing* | Remove-AppxPackage"
CLS

echo.
echo.
echo [=============================62.0%========                 ]
echo.
echo %w%- Uninstalling bingfinance %g% (Removing Preinstalled Apps) %b%
PowerShell -Command "Get-AppxPackage -allusers *bingfinance* | Remove-AppxPackage"
CLS

echo.
echo.
echo [=============================65.5%==========               ]
echo.
echo %w%- Uninstalling bingsports %g% (Removing Preinstalled Apps) %b%
PowerShell -Command "Get-AppxPackage -allusers *bingsports* | Remove-AppxPackage"
CLS

echo.
echo.
echo [=============================69.0%============             ]
echo.
echo %w%- Uninstalling CommsPhone %g% (Removing Preinstalled Apps) %b%
PowerShell -Command "Get-AppxPackage -allusers *CommsPhone* | Remove-AppxPackage"
CLS

echo.
echo.
echo [=============================75.0 %=============           ]
echo.
echo %w%- Uninstalling Drawboard PDF %g% (Removing Preinstalled Apps) %b%
PowerShell -Command "Get-AppxPackage -allusers *Drawboard PDF* | Remove-AppxPackage"
CLS

echo.
echo.
echo [=============================79.5%%===============         ]
echo.
echo %w%- Uninstalling Sway %g% (Removing Preinstalled Apps) %b%
PowerShell -Command "Get-AppxPackage -allusers *Sway* | Remove-AppxPackage"
CLS

echo.
echo.
echo [=============================85.0%%===================     ]
echo.
echo %w%- Uninstalling WindowsAlarms %g% (Removing Preinstalled Apps) %b%
PowerShell -Command "Get-AppxPackage -allusers *WindowsAlarms* | Remove-AppxPackage"
CLS

echo.
echo.
echo [=============================90.5%%=====================   ]
echo.
echo %w%- Uninstalling WindowsPhone %g% (Removing Preinstalled Apps) %b%
PowerShell -Command "Get-AppxPackage -allusers *WindowsPhone* | Remove-AppxPackage"
CLS

echo.
echo.
echo [=============================93.5%%=====================   ]
echo.
echo %w%- Uninstalling WindowsPhone %g% (Removing Preinstalled Apps) %b%
PowerShell -Command "Get-AppxPackage -allusers *WindowsPhone* | Remove-AppxPackage"
CLS

echo.
echo.
echo [=============================100.0%%=======================]
echo %w%- Finished! %b%
chcp 65001 >nul
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
cls
goto d12