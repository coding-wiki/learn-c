  .section __TEXT,__text,regular,pure_instructions
  .build_version macos, 10, 15  sdk_version 10, 15, 4
  .globl _main
  .p2align  4, 0x90
_main:
  .cfi_startproc
  
  pushq %rbp
  .cfi_def_cfa_offset 16
  .cfi_offset %rbp, -16
  movq %rsp, %rbp
  .cfi_def_cfa_register %rbp
  subq $16, %rsp
  movl $0, -4(%rbp)
  leaq L_.str(%rip), %rdi
  movb $0, %al
  callq _printf
  xorl %ecx, %ecx
  movl %eax, -8(%rbp)
  movl %ecx, %eax
  addq $16, %rsp
  popq %rbp
  retq
  .cfi_endproc

  .section  __TEXT,__cstring,cstring_literals
L_.str:
  .asciz  "Hello, World!\n"

.subsections_via_symbols
