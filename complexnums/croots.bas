Input "NUM=",Z
Input "DEGREE=",N

If N<2
Disp "POINTLESS CHOICE"

abs(Z)->R
angle(Z)->T

N->dim(L1)
For(K,0,N-1)
"bug in compiler"
(N[root]^(R)*[e]^([i](T+2*[pi]*k/N)))->L1(K+1)
End

L1
