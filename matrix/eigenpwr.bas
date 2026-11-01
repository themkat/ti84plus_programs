ClrHome
dim([A])
Ans(1)->R
{R,1}->dim([B])
Fill(1,[B])

0->I
1000->E

While I<1000000&E>0.0001
[B]->[C]
[A]*[B]
Ans->[B]

"eigenvalue"
[B][transpose]*[A]*[B]
Ans(1,1)->U
[B][transpose]*[B]
Ans(1,1)->L
(U/L)->A

"check convergence"
[B]-A*[C]
Ans[transpose]*Ans
([root]^2(Ans(1,1)))->E

"ugly way of calculating length"
[B][transpose]*[B]
([root]^2(Ans(1,1)))->L
(1/L)*[B]->[B]

(I+1)->I
End

Disp "ITERS: ",I

A
