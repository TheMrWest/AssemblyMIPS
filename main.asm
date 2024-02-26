# Programa Simples de "Olá Mundo" em Assembly na arquitetura MIPS utilizando macro e globl


.macro printf(%s)
  .data
     msg:  .asciiz  %s
  .text
     li $v0,4
     la $a0,msg
     syscall     
.end_macro

#

.macro end 
   li $v0,10
   syscall
.end_macro

# Inicio
.text
.globl main

main:
  printf("Olá Mundo")
  end




