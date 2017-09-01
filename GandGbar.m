Zi = (1 + au zi1 + au^2 zi2 + au^3 zi3 + au^4 zi4 + au^5 zi5);
Z = (1 + a z1 + a^2 z2 + a^3 z3 + a^4 z4 + a^5 z5);

RHS = Normal[Series[(au Zi G1 + au^2 Zi^2 G2 + au^3 Zi^3 G3 + au^4 Zi^4 G4 + au^5 Zi^5 G5), {au, 0, 5}]]; 
RHS1 = (a Z XQu1 + a^2 Z^2 XQu2 + a^3 Z^3 XQu3 + a^4 Z^4 XQu4); 

(*
zi1 = (- 2*bt0/e);
zi2 = (4*bt0^2/e^2 - bt1/e);
zi3 = ( - 8*bt0^3/e^3 + 16*bt0*bt1/3/e^2 - 2*bt2/3/e);
zi4 = (16*e^-4*bt0^4 - 58/3*e^-3*bt0^2*bt1 + 3/2*e^-2*bt1^2 + 14/3*e^-2*bt0*bt2 - 1/2*e^-1*bt3);
*)

cofR[i_] := Coefficient[RHS, au, i];

Gbar[i_] := cofR[i];
Abar[i_] := cofR[i] /. {G1->A1, G2->A2, G3->A3, G4->A4};
Khat[i_] := Collect[Expand[- 2/i/e Abar[i]], e];
Kbar[i_] := cofR[i] /. {G1->K1, G2->K2, G3->K3, G4->K4};

cof1R1 := Coefficient[RHS1, a, 1];
cof2R1 := Coefficient[RHS1, a, 2];
cof3R1 := Coefficient[RHS1, a, 3];
cof4R1 := Coefficient[RHS1, a, 4];
