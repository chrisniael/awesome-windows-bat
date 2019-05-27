:: 使用 RDP 协议作为远程桌面验证的方式，解决第三方 RDP 客户端无法远程登陆 Windows 问题

@echo off

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server\Winstations\RDP-tcp" /v SecurityLayer /t REG_DWORD /d "0" /f

pause
