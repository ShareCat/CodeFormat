# CodeFormat

## 0x00 : Format your code with [Clang-Format](http://clang.llvm.org/docs/ClangFormat.html)

* Clang-format is a part of Clang.
* Clang-format can be used to format C/C++/Obj-C code.

## 0x01 : For windows
1. Download [Clang](http://releases.llvm.org/download.html).
2. Unzip to a directory.
3. Add environment variables : clang/tools/clang-format.
4. Open a terminal, input "clang-format -help", make sure environment variables has been added successfully.
5. Download clang-format_en.bat(english) or clang-format_ch.bat(chinese).
6. copy clang-format_xx.bat to your project directory.
7. double click clang-format_xx.bat to run, this clang-format_xx.bat script will format all the __.c__ __.cpp__ __.h__ __.hpp__ code recursively.
8. before format your code, please make a backup of your code!!! you can also modify the script to support other programing language, choose a coding style and so on..

## 0x02 : For linux
