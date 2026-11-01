dim([A])
Ans(2)->N

[A]->[H]

identity(N)->[E]
{N,N}->dim([F])
Fill(0,[F])
{N,N}->dim([G])
Fill(0,[G])

1->K
0->Q

While K<=N
prgmEIGENPWR

"STORE EIGENVAL"
A->[F](K,K)

"SAFEKEEP V"
[B]->[I]

"SIMILARITY TRANSFORM"
dim([A])
Ans(2)->D
If D>1
Then
[B][transpose]*[B]
[root]^2(Ans(1,1)))
([B](1,1)+Ans)->[B](1,1)
[B][transpose]*[B]
identity(N-Q)-(2*([B]*[B][transpose])*(1/Ans(1,1)))
Ans->[D]
([D]*[A]*[D])->[C]
{D-1,D-1}->dim([A])

"FILL CUTOFF MATRIX"
For(I,1,D-1)
For(J,1,D-1)
[C](I+1,J+1)->[A](I,J)
End
End
End

"CALC EIGENVECTOR"
[I]->[B]
{N,1}->dim([C])
Fill(0,[C])
dim([B])
Ans(1)->D
For(I,1,D)
[B](I,1)->[C](K+I-1,1)
End
([E]*[C])->[C]

For(I,1,N)
[C](I,1)->[G](I,K)
End

"UPDATE S"
identity(N)->[C]
For(I,K,N)
For(J,K,N)
[D](I-K+1,J-K+1)->[C](I,J)
End
End
([E]*[C])->[E]

(K+1)->K
(Q+1)->Q
End

[H]->[A]
[G]->[C]
[F]->[B]
