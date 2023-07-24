# README for using the Makefiles

This project includes two Makefiles, one for Linux (`linux.mk`) and the other for Windows (`windows.mk`). These Makefiles are designed to help you build and compile your SDL2 project on different operating systems. Below are instructions on how to use each Makefile:

## Linux Makefile (linux.mk)

### Prerequisites
To use the `linux.mk` Makefile, ensure you have the following installed on your Linux system:
- GCC (GNU Compiler Collection)
- SDL2 development libraries

### Compiling the Project
1. Open a terminal in the root directory of your project.
2. To build the project, type the following command:
   ```
   make -f linux.mk
   ```
   This will invoke the `make` command using the `linux.mk` Makefile, which will compile the project using the GCC compiler and SDL2 configurations for Linux.

3. If the compilation is successful, the compiled binary `game.out` will be created in the `bin` directory.

### Cleaning Up
To clean up the generated object files and binaries, type the following command:
```
make -f linux.mk clean
```
This will remove the `obj` and `bin` directories and all their contents.

## Windows Makefile (windows.mk)

### Prerequisites
To use the `windows.mk` Makefile, ensure you have the following installed on your Windows system:
- MinGW (Minimalist GNU for Windows) with GCC
- SDL2 development libraries for Windows

### Compiling the Project
1. Open the Command Prompt (CMD) or PowerShell in the root directory of your project.

2. To build the project, type the following command:
   ```
   make -f windows.mk
   ```
   This will invoke the `make` command using the `windows.mk` Makefile, which will compile the project using the GCC compiler and SDL2 configurations for Windows.

3. If the compilation is successful, the compiled binary `game.exe` will be created in the `bin` directory.

### Cleaning Up
To clean up the generated object files and binaries, type the following command:
```
make -f windows.mk clean
```
This will remove the `obj` and `bin` directories and all their contents.

Please note that the `windows.mk` Makefile uses the `-mconsole` flag to ensure the project is compiled as a console-based application. If you want to create a Windows GUI application, you should use `WinMain` as the entry point in your code and remove the `-mconsole` flag from the `CFLAGS`.

With these instructions, you should be able to use the appropriate Makefile based on your operating system to compile and build your SDL2 project. If you encounter any issues or have further questions, don't hesitate to seek help or reach out for assistance. Happy coding!