// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

@i
M=1
@R0
D=M
@R2
M=D

(loop)
    @R0
    D=M
    @R2
    M=M+D
    @i
    M=M+1
    D=M
    @R1
    A=M-1
    D=D-A
    @exit
    D;JGT
@loop
0;JMP

(exit)
@exit
0;JMP