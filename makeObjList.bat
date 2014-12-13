@echo off
REM this script takes each of its arguments and appends the current directoy to it so it becomes a list absolute file paths
setlocal enabledelayedexpansion

set argCount=0
for %%x in (%*) do (
   set /A argCount+=1
   set "argVec[!argCount!]=%%~x"
)

for /L %%i in (1,1,%argCount%) do echo %CD%\!argVec[%%i]!