// adds contents of register 1 to register 2 untill the sum becomes greater than 50
(LOOP)
    @1
    D=M
    @2
    M=D+M
    D=M
    @50
    D=D-A
    @exit
    D;JGT
@LOOP
0;JMP
(exit)
(inf)
    @inf
    0;JMP
