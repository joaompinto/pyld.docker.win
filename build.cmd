docker build . -t pyld

if %ERRORLEVEL% == 0 goto :next
echo Check the above message for the error building the container
pause

:next

