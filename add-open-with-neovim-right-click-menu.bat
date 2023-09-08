REM @echo off

REM 右键文件，使用 Neovim 编辑
set nvimQtPath="C:\Users\Jump\AppData\Local\Programs\Neovim\bin\nvim-qt.exe"

reg add "HKEY_CURRENT_USER\Software\Classes\*\shell\nvim-qt" /ve /t REG_SZ /d "使用 Neovim 编辑" /f

reg add "HKEY_CURRENT_USER\Software\Classes\*\shell\nvim-qt" /v "Icon" /t REG_SZ /d %nvimQtPath% /f

reg add "HKEY_CURRENT_USER\Software\Classes\*\shell\nvim-qt\command" /ve /t REG_SZ /d "\"%nvimQtPath%\" \"%%1\"" /f


pause
