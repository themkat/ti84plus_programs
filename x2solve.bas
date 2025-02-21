ClrHome
Disp "   Ax^2 + Bx + C = 0"
Input "A=",A
Input "B=",B
Input "C=",C

((B^2)-(4*A*C))->S

If S<0
Then
Disp "Complex result"
S+0[i]->S
End

((B+[root]^2S))/(2*A))->X
((B-[root]^2S))/(2*A))->Y
Disp "X = ",X
Disp "X = ",Y

DelVar A
DelVar B
DelVar C
DelVar S
DelVar X
DelVar Y