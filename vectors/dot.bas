Menu("MAT A AND B ARE USED!","CONTINUE",C,"ABORT",EX)
Lbl C
ClrHome
Disp "A DOT B"
Input "NUM COMPONENTS: ",N
{N,1}->dim([A])
{N,1}->dim([B])

Disp "A COMPONENTS"
For(A,1,N)
Input "=",M
M->[A](A,1)
End

Disp "B COMPONENTS"
For(A,1,N)
Input "=",M
M->[B](A,1)
End

[A][transpose]*[B]
Disp "=",Ans(1,1)

Lbl EX