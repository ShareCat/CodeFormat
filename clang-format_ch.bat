@echo off
echo  ---------------------------------------------
echo 丨                                           丨
echo 丨  1、 遍历本脚本目录下和所有子文件夹下面的 丨
echo 丨      .c .cpp .h .hpp 这4中类型的代码文件，丨 
echo 丨      并执行代码格式化                     丨
echo 丨                                           丨
echo 丨  2、 操作前确认已经将代码备份，防止格式化 丨
echo 丨      时候出错                             丨
echo 丨                                           丨
echo 丨                    作者：孙关平           丨
echo 丨                    邮箱：843553493@qq.com 丨
echo 丨                    版本：V0.1             丨
echo  ---------------------------------------------
echo.
echo 确认 Y. 退出 N.
echo.
set /p var=请选择：
if /i %var%==N (Exit)
echo.
echo 正在格式化代码...
echo.
::遍历本脚本目录下和所有子文件夹下面的 .c .cpp .h .hpp 这4中类型的代码文件，执行代码格式化
for /r . %%f in (*.cpp;*.c) do clang-format -i -style="{IndentWidth: 4, IndentCaseLabels: true}" "%%f"
for /r . %%f in (*.hpp;*.h) do clang-format -i -style="{IndentWidth: 4, IndentCaseLabels: true}" "%%f"

::删除代码格式化时候生成的 .TMP 中间文件
for /r . %%f in (*.TMP) do del "%%f"

echo 格式化代码完成！
echo.
pause