; OS/2 x86 (32-bit) Hello World
; Build with: nasm -f obj hello.asm
; Link with: link386 hello.obj,,,,os2386.lib

        .386
        .model flat
        
        extern DosWrite        ; OS/2 API function for writing to file handles
        extern DosExit        ; OS/2 API function for program termination
        
        .data
msg     db      'Hello, World!', 0dh, 0ah    ; Message with CR/LF
msglen  equ     $ - msg                      ; Length of message
written dd      0                            ; Bytes written storage

        .code
_start:
        push    dword 0                      ; Address for bytes written
        push    dword msglen                 ; Length of string
        push    dword offset msg             ; Address of string
        push    dword 1                      ; File handle (stdout)
        call    DosWrite                     ; Call OS/2 write function
        
        push    dword 0                      ; Action code (exit thread)
        push    dword 0                      ; Result code
        call    DosExit                      ; Terminate program

        end     _start
