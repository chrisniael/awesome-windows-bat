@echo off

Rem 以管理员身份运行这个脚本

Rem 关闭 Windows Bing Search 功能
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Search" /v BingSearchEnabled /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Search" /v CortanaConsent /t REG_DWORD /d 0 /f

Rem 重启一下资源管理器，使修改生效
taskkill /f /im explorer.exe
explorer.exe

pause
