Input "UX=",STR1
Input "UY=",STR2
Input "RES=",R

"calculate arrow tip scale"
max(delta_X,delta_Y)->C

"length max calc prepass"
1->S
For(X,Xmin,Xmax,2)
For(Y,Ymin,Ymax,2)
expr(STR1)
Ans->A
expr(STR2)
Ans->B

[root]^2(A^2+B^2))->L

If L>S
L->S
End
End

"main draw loops"
ClrDraw
For(X,Xmin,Xmax,R)
For(Y,Ymin,Ymax,R)
expr(STR1)
Ans->A
expr(STR2)
Ans->B
(X+(R*A/S))->A
(Y+(R*B/S))->B
Line(X,Y,A,B)
"stupid workaround for arrow tips"
Circle(A,B,C)
End
End
