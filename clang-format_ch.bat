@echo off
echo  ---------------------------------------------
echo ح                                           ح
echo ح  1�� �������ű�Ŀ¼�º��������ļ�������� ح
echo ح      .c .cpp .h .hpp ��4�����͵Ĵ����ļ���ح 
echo ح      ��ִ�д����ʽ��                     ح
echo ح                                           ح
echo ح  2�� ����ǰȷ���Ѿ������뱸�ݣ���ֹ��ʽ�� ح
echo ح      ʱ�����                             ح
echo ح                                           ح
echo ح                    ���ߣ����ƽ           ح
echo ح                    ���䣺843553493@qq.com ح
echo ح                    �汾��V0.1             ح
echo  ---------------------------------------------
echo.
echo ȷ�� Y. �˳� N.
echo.
set /p var=��ѡ��
if /i %var%==N (Exit)
echo.
echo ���ڸ�ʽ������...
echo.
::�������ű�Ŀ¼�º��������ļ�������� .c .cpp .h .hpp ��4�����͵Ĵ����ļ���ִ�д����ʽ��
for /r . %%f in (*.cpp;*.c) do clang-format -i -style="{IndentWidth: 4, IndentCaseLabels: true}" "%%f"
for /r . %%f in (*.hpp;*.h) do clang-format -i -style="{IndentWidth: 4, IndentCaseLabels: true}" "%%f"

::ɾ�������ʽ��ʱ�����ɵ� .TMP �м��ļ�
for /r . %%f in (*.TMP) do del "%%f"

echo ��ʽ��������ɣ�
echo.
pause