anak(anto, ita).
anak(anto, budi).
anak(anto, ida).
anak(wati, ita).
anak(wati, budi).
anak(wati, ida).
anak(deni, hadi).
anak(ita, hadi).
anak(budi, dina).
anak(ida, andi).
anak(ida, rita).
anak(rudi, andi).
anak(rudi, rita).
pr(wati).
pr(ita).
pr(ida).
pr(dina).
pr(rita).
lk(anto).
lk(budi).
lk(deni).
lk(hadi).
lk(andi).
lk(rudi).
lk(L):- \+pr(L).
ortu(C, P):-anak(P, C).
ayah(A, B):-ortu(A, B), lk(B).
ibu(A, B):-ortu(A, B), pr(B).
saudaralk(S, SL):-ayah(S, A), ayah(SL, A), lk(SL), S\=SL.
saudarapr(S, SP):-ayah(S, A), ayah(SP, A), pr(SP), S\=SP.
paman(A, B):-ortu(A, KN), saudaralk(KN, B).
bibi(A, B):-ortu(A, KN), saudarapr(KN, B).
kakek(A, KN):-ortu(A, B), ayah(B, KN).
nenek(A, KN):-ortu(A, B), ibu(B, KN).

