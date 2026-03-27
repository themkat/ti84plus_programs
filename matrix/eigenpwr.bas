ClrHome
dim([A])
Ans(1)->R
{R,1}->dim([B])
Fill(1,[B])

Input "MAX ITER=",M
0->I
1000->E

While I<M&E>0.0001
[B]->[C]
[A]*[B]
Ans->[B]

"ugly way of calculating length"
[B][transpose]*[B]
([root]^2(Ans(1,1)))->L

(1/L)*[B]->[B]

"check convergence"
[B]-[C]
Ans[transpose]*Ans
([root]^2(Ans(1,1)))->E

(I+1)->I
End

Disp "ITERS: ",I

"eigenvalue"
[B][transpose]*[A]*[B]
Ans(1,1)->U
[B][transpose]*[B]
Ans(1,1)->L
U/L
Disp "lambda=",Ans
