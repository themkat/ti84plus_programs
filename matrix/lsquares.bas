Disp "LEAST SQUARES"
Disp "AX = B"

dim([B])
If Ans(1)>1&Ans(2)>1
Then
Disp "B SHOULD BE A VECTOR!"
Disp "SETUP YOUR MATRICES!"
Disp "A AND B"
Goto E
End

(([A][transpose]*[A])^-1)*[A][transpose]*[B]
Disp "=",Ans

Lbl E