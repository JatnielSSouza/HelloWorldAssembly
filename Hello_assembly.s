 .section .data
     msg:                                                                                         
      .ascii "Hello World!\n"                                                                    
    
 .section .text
 
  .globl _start
     _start:

      #Arguments to write hello world:
        
        #System Call Number:
        movl $4, %eax    #Syscall number for write syscall
        
        #System Call Arguments:
        movl $1, %ebx    #File descripter for write syscall                                             
        movl $msg, %ecx  #Moving buffer pointer to write syscall                                      
        movl $14, %edx   #Moving the buffer size in bytes - número de caracteres                                              
        int $0x80        #Interrupt call- Término do programa

      #Argumento para sair da execução do programa:
       movl $1, %eax #1 is syscall number for exit syscall
       movl $0, %ebx #Argument for exit syscall
       int $0x80     #Interrupt call - Término do programa
