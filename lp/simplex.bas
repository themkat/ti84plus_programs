"get matrix and vector sizes"
dim([A])
Ans(1)->M
dim([A])
Ans(2)->N
dim([B])
Ans(1)->B
dim([C])
Ans(1)->C

"sanity check row/height"
If B!=M
Then
Disp "A AND B DIM ERR"
Stop
End
If C!=N
Then
Disp "A AND C DIM ERR"
Stop
End

"create expanded matrix in D"
augment([A],augment(identity(M),[B]))->[D]

"save C for use as top row"
{M+1,1}->dim([E])
Fill(0,[E])
augment([C][transpose],[E][transpose])[transpose]->[E]
augment([E],[D][transpose])[transpose]->[D]

"any improvements possible"
Matr->list([D][transpose],L1)
max(L1)->C

"TODO fix iteration count"
0->I
10000->X

While (C>0)&(I<X)
"find index of biggest coefficient"
[D](1,1)->R
1->L
For(A,1,N+M)
If [D](1,A)>R
Then
A->L
[D](1,A)->R
End
End

"find row index of smallest ratio in column L"
10000000->R
1->S
For(A,2,M+1)
If [D](A,L)<=0
Goto FR

([D](A,N+M+1)/[D](A,L))->K
If K<R
Then
K->R
A->S
End

Lbl FR
End

"move var in col L into basis. var in row S out"
*row((1/[D](S,L)),[D],S)->[D]
For(A,1,S-1)
*row+([neg][D](A,L),[D],S,A)->[D]
End
For(A,S+1,M+1)
*row+([neg][D](A,L),[D],S,A)->[D]
End

"any improvements possible"
Matr->list([D][transpose],L1)
max(L1)->C

(I+1)->I
End


"save X values to E"
{N,1}->dim([E])
Fill(0,[E])
For(I,1,N)
Matr->list([D],I,L1)
sum(L1=1)->C
sum(L1=0)->D

If C!=1|D!=M
Goto NX

For(J,2,M+1)
If [D](J,I)=1
[D](J,M+N+1)->[E](I,1)
End
Lbl NX
End

"save slack variables W to F"
{M,1}->dim([F])
Fill(0,[F])
For(I,N+1,M+N)
Matr->list([D],I,L1)
sum(L1=1)->C
sum(L1=0)->D

If C!=1|D!=M
Goto NW

For(J,2,M+1)
If [D](J,I)=1
Then
[D](J,M+N+1)->[F](I-N,1)
(M+1)->J
End
End
Lbl NW
End

"the solution"
[neg][D](1,M+N+1)
