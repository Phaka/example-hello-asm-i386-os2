# Hello World in x86 Assembly (32-bit OS/2)

A minimal Hello World implementation in x86 32-bit assembly for OS/2 systems. This program uses the OS/2 API directly for console output and program termination.

## Installation

### OS/2
You'll need the following tools installed in your OS/2 environment:
1. NASM assembler (available from OS/2 software repositories)
2. IBM LINK386 linker (part of IBM C Set/2 or Visual Age C++)
3. OS/2 Toolkit (for system headers and libraries)

## Building and Running

```cmd
:: Assemble the source
nasm -f obj hello.asm

:: Link with OS/2 system libraries
link386 hello.obj,,,,os2386.lib

:: Run the program
hello.exe
```

## Code Explanation

The implementation uses the OS/2 API:
- DosWrite function for console output
- DosExit function for program termination

The program follows OS/2's calling conventions:
- Parameters pushed right-to-left
- Caller cleans up the stack
- 32-bit flat memory model
- OS/2 API functions expect far calls

Note: This implementation is primarily for historical and educational purposes, as OS/2 is no longer widely used. However, it demonstrates important concepts about operating system APIs and assembly programming.
