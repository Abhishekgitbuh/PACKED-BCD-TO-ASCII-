//assumne that register A has packed BCD. write a program to convert packed BCD to two ASCII numbers and place them in R2 and R6.

ORG 0
MOV A, #48H ; packed BCD
MOV B,A
ANL A, #0FH
ORL A, #30H
MOV R6, A ;lower ascii in R6 
MOV A, B
SWAP A
ANL A, #0FH
ORL A, #30H
MOV R2, A ;upper ascii in R2
END