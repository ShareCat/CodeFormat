@echo off
echo  ---------------------------------------------
echo.
echo    1. Traverse the directory under this
echo       script and all subfolders, .C, .Cpp,
echo       .H,.Hpp, 4 types of code files, and
echo       execute code formatting
echo.
echo    2. Make sure that the code has been
echo       backed up before proceeding to
echo       prevent formatting errors
echo.
echo                  Author  : Cat
echo                  Email   : 843553493@qq.com
echo                  Version : V0.1
echo  ---------------------------------------------
echo.
echo Proceed : Y. Quit : N.
echo.
set /p var=Are you sure : 
if /i %var%==N (Exit)
echo.
echo Formatting...
echo.
::Traverse the script directory, and all subfolders,.C,.Cpp,.H,.Hpp,, these types of code files, the implementation of code formatting
for /r . %%f in (*.cpp;*.c) do clang-format -i -style="{IndentWidth: 4, IndentCaseLabels: true}" "%%f"
for /r . %%f in (*.hpp;*.h) do clang-format -i -style="{IndentWidth: 4, IndentCaseLabels: true}" "%%f"

::Delete the.TMP intermediate file generated when the code is formatted
for /r . %%f in (*.TMP) do del "%%f"

echo Finish!
echo.
pause