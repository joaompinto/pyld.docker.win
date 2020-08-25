@echo off

docker run ^
    --restart always ^
    -d --name pyld ^
    -p "127.0.0.1:2222:22" ^
    -v pyld-home:/home ^
    -t pyld

if %ERRORLEVEL% == 0 goto :next
echo Check the above message for the error starting the container
pause

:next


