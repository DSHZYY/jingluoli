@echo off
chcp 65001 >nul
title Whale OS 2.0
set "URL=https://dshzyy.github.io/jingluoli/os.html"
set "EDGE="
for %%p in ("%ProgramFiles%\Microsoft\Edge\Application\msedge.exe" "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" "%LocalAppData%\Microsoft\Edge\Application\msedge.exe") do (
  if not defined EDGE if exist "%%~p" set "EDGE=%%~p"
)
if not defined EDGE (
  for %%p in ("%ProgramFiles%\Google\Chrome\Application\chrome.exe" "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe") do (
    if not defined EDGE if exist "%%~p" set "EDGE=%%~p"
  )
)
if not defined EDGE (
  echo [ERROR] 没找到 Edge 或 Chrome
  echo 请先安装 Microsoft Edge，或直接浏览器打开 %URL%
  pause
  exit /b
)
echo 使用: %EDGE%
echo 打开鲸鱼OS 2.0（独立窗口，无地址栏）...
start "" "%EDGE%" --app=%URL% --window-size=1280,800
exit /b
