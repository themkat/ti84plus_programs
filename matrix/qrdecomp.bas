"GRAM SCHMIDT"
dim([A])
Ans(1)->R
dim([A])
Ans(2)->T
{R,T}->dim([B])
Fill(0,[B])
For(D,1,T)

"CALC UX"
D
prgmGETCOL
Ans->[H]

If D>1
Then
"Calculate H by using prev entries"
[H]->[G]
[A]->[E]
[B]->[A]

For(I,1,D-1)
I
prgmGETCOL
Ans->[F]
[F][transpose]*[G]
Ans(1,1)->A
[F][transpose]*[F]
Ans(1,1)->B

If B>0
Then
([H]-(A/B)*[F])->[H]
End
End

[E]->[A]
End

"NORMALIZE"
[H][transpose]*[H]
[root]^2(Ans(1,1))
([H]*(1/Ans))->[H]

For(R,1,T)
[H](R,1)->[B](R,D)
End
End

"R=Q^T*A"
([B][transpose]*[A])->[C]

Disp "[A]=QR"
Disp "Q=[B]"
Disp "R=[C]"
