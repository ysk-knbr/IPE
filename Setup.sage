# BN曲線などの初期設定
t = -(2^62+2^55+1)
p = 36*t^4+36*t^3+24*t^2+6*t+1
n = 36*t^4+36*t^3+18*t^2+6*t+1
tr = 6*t^2+1

#Fp.<x> = PolynomialRing(GF(p))
from sage.rings.finite_rings.finite_field_ext_pari import FiniteField_ext_pari
Fp2 = FiniteField_ext_pari(p^2, 'i', modulus=(x^2+1)) 
print Fp
print Fp2


# testコード
a = Fp2(4077150910722082372240767376279799992370921361029205745588715593257060876886*u+5995675889797122186860587757142312963959931623629698415841649326491202424627)

b = Fp2(12520089999370016121495161042112045333732932484795020319245924124529647766484*u+12855801183119736228256736275997555512906262631279275914811939637093221088538)

print a+b; print a*b


#Fp6 = FiniteField_ext_pari(p^6, 'v', modulus=(i^3-(Fp2.gen()+1))) 
#Fp12 = FiniteField_ext_pari(p^12, 'w', modulus=(w^2-v)) 

#_param = [q, V, Gt, A, e] #論文に沿った_paramの定義
