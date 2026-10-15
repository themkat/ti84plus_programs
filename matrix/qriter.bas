"Saves A for later"
[A]->[J]

Input "NUM ITERATIONS=",W
For(Z,1,W)
prgmQRDECOMP
([C]*[B])->[I]
[I]->[A]
End

"Restores original A"
[J]->[A]
