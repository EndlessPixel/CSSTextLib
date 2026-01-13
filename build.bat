@echo off
setlocal enabledelayedexpansion

:: 版本号文件夹（改这里就能复用）
set "ver=2.0"

:: sass 可执行文件路径（如已加入 PATH 可直接写 sass）
set "SASS_EXE=D:\Program Files\dart-sass\sass.bat"

echo === Sass 开始编译 =========================================

::  expanded
"%SASS_EXE%" "%ver%\csstextlib.scss" "%ver%\csstextlib.css" --style=expanded
if %errorlevel% equ 0 (
  echo √  expanded  已生成：%ver%\csstextlib.css
) else (
  echo ×  expanded  失败！
  pause & exit /b 1
)

::  compressed
"%SASS_EXE%" "%ver%\csstextlib.scss" "%ver%\csstextlib.min.css" --style=compressed
if %errorlevel% equ 0 (
  echo √  compressed 已生成：%ver%\csstextlib.min.css
) else (
  echo ×  compressed 失败！
  pause & exit /b 1
)

echo === 编译完成 ^(◕‿◕^) =======================================
pause