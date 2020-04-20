@echo off

rem taskkill 是异步的，所以执行后可能进程还在运行，会导致 del 失败
rem 所以这里强制为同步

set processname="WeChatWeb.exe"

:loop
taskkill /f /im %processname% /t 2>nul

tasklist | find /i %processname% >nul 2>&1
if errorlevel 1 (
  goto continue
) else (
  echo %processname% is still running
  timeout /T 3 /Nobreak
  goto loop
)

:continue

del /f /q "C:\Program Files (x86)\Tencent\WeChat\WeChatWeb.exe" 2>nul

pause
