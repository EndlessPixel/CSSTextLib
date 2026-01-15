@echo off
setlocal enabledelayedexpansion
set "ver=version\3.0"
set "SASS_EXE=D:\Program Files\dart-sass\sass.bat"
set "SCSS_FILENAME=csstextlib.scss"
set "SCSS_FILE=%~dp0%ver%\%SCSS_FILENAME%"
set "CSS_FILE=%~dp0%ver%\csstextlib.css"
set "MIN_CSS_FILE=%~dp0%ver%\csstextlib.min.css"
if not exist "%SASS_EXE%" (pause & exit /b 1)
if not exist "%~dp0%ver%" (pause & exit /b 1)
if not exist "%SCSS_FILE%" (pause & exit /b 1)
call "%SASS_EXE%" "%SCSS_FILE%" "%CSS_FILE%" --style=expanded
if !errorlevel! neq 0 (pause & exit /b 1)
call "%SASS_EXE%" "%SCSS_FILE%" "%MIN_CSS_FILE%" --style=compressed
if !errorlevel! neq 0 (pause & exit /b 1)
pause