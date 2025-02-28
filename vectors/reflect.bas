Disp "VECTOR REFLECT"
Disp "D BY NORMAL N"

Input "DIMS: ",D
{D,1}->dim([I])
{D,1}->dim([J])
Fill(0,[I])
Fill(0,[J])

Disp "VEC D"
For(I,1,D)
Input "=",E
E->[I](I,1)
End

Disp "VEC N"
For(I,1,D)
Input "=",E
E->[J](I,1)
End

[I][transpose]*[J]
[I]-2*Ans(1,1)*[J]