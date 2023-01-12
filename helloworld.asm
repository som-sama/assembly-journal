section .data
    hello db 'Hello, World!',0

section .text
    global _start

_start:
    ; write(1, hello, 13)
    mov edx, 13
    mov ecx, hello
    mov ebx, 1
    mov eax, 4
    int 0x80

    ; exit(0)
    mov eax, 1
    xor ebx, ebx
    int 0x80





@ The first section, .data, defines a null-terminated string "Hello, World!" that we'll print to the screen.
@ The next section, .text contains the executable instructions.
@ It contains the entry point of the program, _start.
@ _start is the label where the program execution begins.
@ This code first writes the string to the stdout using the system call write(1,hello,13) and then exits using the system call exit(0)

@ Please keep in mind that this is a very simple example, and it might not work on all systems or configurations.