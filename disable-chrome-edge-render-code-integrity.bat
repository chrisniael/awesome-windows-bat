@echo off

Rem 以管理员身份运行这个脚本

Rem 关闭 Chrome RendererCodeIntegrityEnabled
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Google\Chrome" /v RendererCodeIntegrityEnabled /t REG_DWORD /d 0 /f

Rem 关闭 Edge RendererCodeIntegrityEnabled
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Edge" /v RendererCodeIntegrityEnabled /t REG_DWORD /d 0 /f

pause
