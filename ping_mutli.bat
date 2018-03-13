@Echo off

for /f "tokens=1 delims=" %%i in (list.txt) do call :part2 %%i
goto :fin

:part2
echo %1
TASKLIST | find /c "cmd" >count.txt
set /p ch=<count.txt
set str1=%ch%
set /A fh=%str1%-1
IF %fh% GEQ 10 goto :wait
START /B CMD /C CALL "demo.bat" %1  >NUL 2>&1
goto :eof

:fin
echo all done

:wait
timeout /T 2
goto :part2