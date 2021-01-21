call runcrud.bat
if "%ERRORLEVEL%" == "0" goto chromestart
echo.
echo RUNCRUD.BAT has errors - breaking work
goto fail

:chromestart
start chrome --new-window "http://localhost:8080/crud/v1/task/getTasks"
if "%ERRORLEVEL%" == "0" goto end
echo.
echo Cannot open Chrome and show tasks - breaking work

:fail
echo.
echo There were errors!

:end
echo.
echo Work is finished.