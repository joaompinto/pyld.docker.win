@echo off

FOR /f "tokens=*" %%i IN ('docker ps -a -q --filter="name=pyld"') DO docker stop %%i
FOR /f "tokens=*" %%i IN ('docker ps -a -q --filter="name=pyld"') DO docker rm %%i

