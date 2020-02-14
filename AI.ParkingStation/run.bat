@echo off
set curPath=%cd%
rd /s/q %curPath%\chrome
md %curPath%\chrome
md %curPath%\chrome\dev
md %curPath%\chrome\cache

"C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --user-data-dir="%curPath%\chrome\dev" --disable-web-security --disk-cache-dir="%curPath%\chrome\cache" --disk-cache-size=2147483648 %curPath%\index.html