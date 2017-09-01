(**************************************************************************)
(* High energy behaviour of massive form factors                          *)
(* Taushif Ahmed, Johannes M. Henn & Matthias Steinhauser                 *)
(* 1704.*****                                                             *)
(* Results of the massive form factors to 4-loop in planar limit          *)
(* Results of the massless form factors to 5-loop in planar limit         *)
(**************************************************************************)

(*
Strong coupling constant alpha_s is renormalized 
in the MSbar and the heavy quark mass, the heavy 
quark wave function in the on-shell scheme.

Log of massive FF (Eq. (2.20)): Renormalised 
--------------------------------------------
lnF1mv1l: 1-loop general expression to ep^4
lnF1mv2l: 2-loop general expression to ep^3
lnF1mv3l: 3-loop general expression to ep^2
lnF1mv4l: 4-loop general expression to ep
lnF1mv1lres: 1-loop result to ep^4 
lnF1mv2lres: 2-loop result to ep^2 
lnF1mv3lres: 3-loop result to ep 
lnF1mv4lres: 4-loop result to ep^-2 

Massive FF (Eq. (2.2) & (4.6)): Renormalised
--------------------------------------------
F1mv1l: 1-loop general expression to ep^4
F1mv2l: 2-loop general expression to ep^3
F1mv3l: 3-loop general expression to ep^2
F1mv4l: 4-loop general expression to ep
F1mv1lres: 1-loop result to ep^4 
F1mv2lres: 2-loop result to ep^2 
F1mv3lres: 3-loop result to ep 
F1mv4lres: 4-loop result to ep^-2 

Massless FF (Eq. (3.5) & (4.7)): Bare
-------------------------------------
Fqml1l: 1-loop general expression to ep^6
Fqml2l: 2-loop general expression to ep^4
Fqml3l: 3-loop general expression to ep^2
Fqml4l: 4-loop general expression to ep^0
Fqml5l: 5-loop general expression to ep^0
Fqml1lres: 1-loop result to ep^6
Fqml2lres: 2-loop result to ep^4
Fqml3lres: 3-loop result to ep^2
Fqml4lres: 4-loop result to ep^0
Fqml5lres: 5-loop result to ep^-3

Regularization scheme independent ratio functions (Eq. (5.2))
-------------------------------------------------------------
Z1: 1-loop general expression to ep^4
Z2: 2-loop general expression to ep^2
Z3: 3-loop general expression to ep^0
Z4: 4-loop general expression to ep^-2
Z1res: 1-loop result to ep^4
Z2res: 2-loop result to ep^2
Z3res: 3-loop result to ep^0
Z4res: 4-loop result to ep^-2

To check KG Equation
--------------------
DlnF1mv: left hand side of Eq.(2.1)
*)


(*----------------------------------------------------------------*)
(* as = alphas/4/Pi                                               *)
(* Solution of the evolution of as(m^2) -> as(muR^2) up to N^3LO  *)
(* asm = as(m^2); asr = as(muR^2)                                 *)
(* Lrm = ln(muR^2/m^2)                                            *)
(* LQm = ln(Q^2/m^2)                                              *)
(* Q^2 = -q^2 = - (p1+p2)^2                                       *)
(* d = 4 - 2 ep                                                   *)
(* au is the bare strong coupling constant                        *)
(* nfv and N4: arise from the massless form factors where the     *) 
(*             virtual gauge boson does not couple directly to    *)
(*             the final-state quarks. This contributions are     *)
(*             sub-dominant in the planar limit.                  *)
(* See Eq. (2.19) of paper.           				  *)
(*----------------------------------------------------------------*)

asr =  ( asm^2*(-(bt0*Lrm) + (3*bt0*ep*Lrm^2)/2 - (7*bt0*ep^2*Lrm^3)/6 + 
   (5*bt0*ep^3*Lrm^4)/8 - (31*bt0*ep^4*Lrm^5)/120 + (7*bt0*ep^5*Lrm^6)/80) + 
 asm*(1 - ep*Lrm + (ep^2*Lrm^2)/2 - (ep^3*Lrm^3)/6 + (ep^4*Lrm^4)/24 - 
   (ep^5*Lrm^5)/120 + (ep^6*Lrm^6)/720) + 
 asm^3*(-(bt1*Lrm) + bt0^2*Lrm^2 + ep*(2*bt1*Lrm^2 - 2*bt0^2*Lrm^3) + 
   ep^2*((-13*bt1*Lrm^3)/6 + (25*bt0^2*Lrm^4)/12) + 
   ep^3*((5*bt1*Lrm^4)/3 - (3*bt0^2*Lrm^5)/2) + 
   ep^4*((-121*bt1*Lrm^5)/120 + (301*bt0^2*Lrm^6)/360)) + 
 asm^4*(-(bt2*Lrm) + (5*bt0*bt1*Lrm^2)/2 - bt0^3*Lrm^3 + 
   ep*((5*bt2*Lrm^2)/2 - (19*bt0*bt1*Lrm^3)/3 + (5*bt0^3*Lrm^4)/2) + 
   ep^2*((-7*bt2*Lrm^3)/2 + (205*bt0*bt1*Lrm^4)/24 - (13*bt0^3*Lrm^5)/4) + 
   ep^3*((85*bt2*Lrm^4)/24 - (97*bt0*bt1*Lrm^5)/12 + (35*bt0^3*Lrm^6)/12)) );


subs1 = {
G1 -> (G10 + ep G11 + ep^2 G12 + ep^3 G13 + ep^4 G14 + ep^5 G15 + ep^6 G16),
G2 -> (G20 + ep G21 + ep^2 G22 + ep^3 G23 + ep^4 G24 + ep^5 G25 + ep^6 G26),
G3 -> (G30 + ep G31 + ep^2 G32 + ep^3 G33 + ep^4 G34 + ep^5 G35 + ep^6 G36),
G4 -> (G40 + ep G41 + ep^2 G42 + ep^3 G43 + ep^4 G44 + ep^5 G45 + ep^6 G46),

C1 -> (C10 + ep C11 + ep^2 C12 + ep^3 C13 + ep^4 C14 + ep^5 C15 + ep^6 C16),
C2 -> (C20 + ep C21 + ep^2 C22 + ep^3 C23 + ep^4 C24 + ep^5 C25 + ep^6 C26),
C3 -> (C30 + ep C31 + ep^2 C32 + ep^3 C33 + ep^4 C34 + ep^5 C35 + ep^6 C36),
C4 -> (C40 + ep C41 + ep^2 C42 + ep^3 C43 + ep^4 C44 + ep^5 C45 + ep^6 C46)
}

(*--------------------------------------------------*)
(* List of Cusp Anomalous Dimensions A              *)
(* A1, A2, A3 are complete                          *)
(* A4: in the planar limit                          *)
(*     Ref: 1604.03126 Eq.(2.6)                     *)
(*     Ref: 1612.04389 Eq.(11)                      *)
(* See Eq. (4.1) of paper                           *)
(*--------------------------------------------------*)

subs2 = {
A1 -> 4*Cf,
A2 -> (8*Cf*Ca*(67/18-zeta2) +8*Cf*nf*(-5/9) ),
A3 -> (16*Cf*Ca^2*(245/24-67/9*zeta2+11/6*zeta3+11/5*zeta2^2)
      +16*Cf^2*nf*(-55/24+2*zeta3)
      +16*Cf*Ca*nf*(-209/108+10/9*zeta2-7/3*zeta3)
      +16*Cf*nf^2*(-1/27) ),
A4 -> (nc/2 ( (-32 Pi^4/135 + 1280 Zeta[3]/27 - 304 Pi^2/243 + 2119/81) nc nf^2
         + (128 Pi^2 Zeta[3]/9 + 224 Zeta[5] - 44 Pi^4/27 - 16252 Zeta[3]/27 + 13346 Pi^2/243 - 39883/81) nc^2 nf
         + (64 Zeta[3]/27 - 32/81) nf^3 
      + (-32 Zeta[3]^2 - 176/9 Pi^2 Zeta[3] + 20992/27 Zeta[3] - 352 Zeta[5] - 292/315 Pi^6
         + 902/45 Pi^4 - 44416 Pi^2/243 + 84278/81) nc^3 )),

(*------------------------------------------------------------------------------------------*)
(* G in planar limit                                                                        *)
(* Beyond G12, G21, G30 are from the results of massless FF.                                *)
(* The decomposition of G40: hep-ph/0603041  Eq.(20).                                       *) 
(* G40 contains universal part (Un) + non-universal (NUn) part.                             *)
(* The nf-dependent part in large-nc limit of the Un is extracted from 1604.03126 Eq.(2.7)  *)
(* The nf-INdependent part in large-nc limit of the Un is extracted from 1612.04389 Eq.(12) *)
(* The NUn part comes from lower order: hep-ph/0603041 Eq. (20)                             *)
(* Required for Massless up to 1/ep^3 at 5-loop: ..., G16, ..., G24, ..., G32, ..., G40     *)
(* See Eq. (4.3) of paper                                                                   *)
(*------------------------------------------------------------------------------------------*)

G10 -> (3*nc),
G11 -> ( nc*(8 - Pi^2/6) ),
G12 -> ( nc*(16 - Pi^2/4 - (14*Zeta[3])/3) ),
G13 -> ( nc*(32 - (2*Pi^2)/3 - (47*Pi^4)/720 - 7*Zeta[3]) ),
G14 -> ( nc*(64 - 8*zeta2 - (141*zeta2^2)/40 - (56*zeta3)/3 + (7*zeta2*zeta3)/3 - 
	  (62*zeta5)/5) ),
G15 -> ( nc*(128 - 16*zeta2 - (47*zeta2^2)/5 - (949*zeta2^3)/280 - (112*zeta3)/3 +
	  (7*zeta2*zeta3)/2 + (49*zeta3^2)/9 - (93*zeta5)/5) ),
G16 -> ( nc*(256 - 32*zeta2 - (94*zeta2^2)/5 - (2847*zeta2^3)/560 - (224*zeta3)/3 +
	  (28*zeta2*zeta3)/3 + (329*zeta2^2*zeta3)/60 + (49*zeta3^2)/6 -
	  (248*zeta5)/5 + (31*zeta2*zeta5)/5 - (254*zeta7)/7) ),
G17 -> ( nc*(512 - 64*zeta2 - (188*zeta2^2)/5 - (949*zeta2^3)/70 - 
	  (55779*zeta2^4)/11200 - (448*zeta3)/3 + (56*zeta2*zeta3)/3 + 
	  (329*zeta2^2*zeta3)/40 + (196*zeta3^2)/9 - (49*zeta2*zeta3^2)/18 - 
	  (496*zeta5)/5 + (93*zeta2*zeta5)/10 + (434*zeta3*zeta5)/15 - (381*zeta7)/7) ),

G20 -> ( nc*nl*(-209/27 - (2*Pi^2)/9) + nc^2*(5171/108 + (2*Pi^2)/9 - 14*Zeta[3]) ),
G21 -> ( nc^2*(140411/648 + (53*Pi^2)/108 - (11*Pi^4)/45 - (170*Zeta[3])/3) + 
	 nc*nl*(-5813/162 - (37*Pi^2)/54 + (8*Zeta[3])/3) ),
G22 -> ( nc*nl*(-129389/972 - (425*Pi^2)/162 + (7*Pi^4)/216 + (602*Zeta[3])/27) + 
 	nc^2*(3069107/3888 + (2795*Pi^2)/648 - (1969*Pi^4)/2160 - (7511*Zeta[3])/27 + 
   	(47*Pi^2*Zeta[3])/9 - 90*Zeta[5]) ),
G23 -> ( nc^2*(61411595/23328 + (69131*zeta2)/648 - (55187*zeta2^2)/360 - 
	   (907*zeta2^3)/35 - (162443*zeta3)/162 + (161*zeta2*zeta3)/3 + 
	   (334*zeta3^2)/3 - 402*zeta5) + nc*nl*(-2628821/5832 - (8405*zeta2)/162 + 
	   (1873*zeta2^2)/180 + (8170*zeta3)/81 + (22*zeta2*zeta3)/3 + 24*zeta5) ),
G24 -> ( nc*nl*(-50947325/34992 - (160493*zeta2)/972 + (12781*zeta2^2)/270 +
	   (953*zeta2^3)/60 + (91985*zeta3)/243 + (791*zeta2*zeta3)/27 -
	   (578*zeta3^2)/27 + (6218*zeta5)/45) +
	 nc^2*(1175293667/139968 + (1506131*zeta2)/3888 - (579427*zeta2^2)/1080 -
	   (27737*zeta2^3)/168 - (3218759*zeta3)/972 + (8279*zeta2*zeta3)/54 +
	   (1909*zeta2^2*zeta3)/15 + (12197*zeta3^2)/27 - (78683*zeta5)/45 +
	   (934*zeta2*zeta5)/5 - 606*zeta7) ),
G25 -> ( nc^2*(21943277819/839808 + (30665291*zeta2)/23328 - (11254483*zeta2^2)/6480 - 
	   (250967*zeta2^3)/336 - (13658*zeta2^4)/175 - (59920295*zeta3)/5832 + 
	   (43837*zeta2*zeta3)/162 + (29519*zeta2^2*zeta3)/60 + 
	   (293017*zeta3^2)/162 - (1678*zeta2*zeta3^2)/9 - (329683*zeta5)/54 + 
	   (1801*zeta2*zeta5)/5 + (6028*zeta3*zeta5)/5 - 2830*zeta7) + 
	 nc*nl*(-960894437/209952 - (3002069*zeta2)/5832 + (288877*zeta2^2)/1620 + 
	   (68273*zeta2^3)/840 + (1879049*zeta3)/1458 + (9682*zeta2*zeta3)/81 - 
	   (601*zeta2^2*zeta3)/30 - (9023*zeta3^2)/81 + (80962*zeta5)/135 + 
	   (182*zeta2*zeta5)/5 + 184*zeta7) ),


G30 -> ( nc*nl^2*(9838/729 + (76*Pi^2)/81 + (16*Zeta[3])/27) + 
	 nc^2*nl*(-361489/1458 - (1933*Pi^2)/243 + (8*Pi^4)/45 + (416*Zeta[3])/9) + 
	 nc^3*(4317713/5832 + (7165*Pi^2)/972 - (22*Pi^4)/45 - (10237*Zeta[3])/27 + 
	   (44*Pi^2*Zeta[3])/9 + 136*Zeta[5]) ),

G31 -> ( nc*nl^2*(258445/2187 + (3466*zeta2)/81 + (40*zeta2^2)/9 - (536*zeta3)/81) + 
	 nc^3*(197609041/34992 + (718195*zeta2)/972 - (13844*zeta2^2)/45 + 
 	  (5392*zeta2^3)/45 - (8816*zeta3)/3 + (1496*zeta2*zeta3)/9 + 
	   (656*zeta3^2)/3 - 224*zeta5) + 
	 nc^2*nl*(-16790213/8748 - (416425*zeta2)/972 + (110*zeta2^2)/3 + 
	   (39110*zeta3)/81 - (164*zeta2*zeta3)/9 + (400*zeta5)/3) + 
	 nc^2*(-12*nfv - 30*nfv*zeta2 + (6*nfv*zeta2^2)/5 - 14*nfv*zeta3 + 
	   80*nfv*zeta5) ),

G32 -> ( nc*nl^2*(1024873/1458 + (58904*zeta2)/243 + (269*zeta2^2)/9 - 
	   (22220*zeta3)/243 - (376*zeta2*zeta3)/27 - (112*zeta5)/9) + 
	 nc^2*nl*(-188719859/17496 - (3943345*zeta2)/1458 + (78947*zeta2^2)/540 + 
	   (3926*zeta2^3)/35 + (184573*zeta3)/54 + (68*zeta2*zeta3)/27 - 
	   152*zeta3^2 + 1376*zeta5) + nc^2*(-170*nfv - 260*nfv*zeta2 + 
	   (196*nfv*zeta2^2)/5 + (9728*nfv*zeta2^3)/105 - (94*nfv*zeta3)/3 - 
	   90*nfv*zeta2*zeta3 + 344*nfv*zeta3^2 - (752*nfv*zeta5)/3) + 
	 nc^3*(2200841219/69984 + (64740335*zeta2)/11664 - (949937*zeta2^2)/540 - 
	   (5867*zeta2^3)/35 - (17023405*zeta3)/972 + (48055*zeta2*zeta3)/54 + 
	   (3808*zeta2^2*zeta3)/15 + (6340*zeta3^2)/3 - (16355*zeta5)/3 - 
	   (604*zeta2*zeta5)/3 + (7436*zeta7)/3) ),

G33 -> ( nc*nl^2*(280473545/78732 + (861265*zeta2)/729 + (123979*zeta2^2)/810 - 
	   (127*zeta2^3)/135 - (156088*zeta3)/243 - (11344*zeta2*zeta3)/81 + 
	   (320*zeta3^2)/27 - (5368*zeta5)/27) + 
	 nc^3*(191830138457/1259712 + (2240*multi5zeta3)/3 + 
	   (2201790287*zeta2)/69984 - (53175563*zeta2^2)/6480 - 
	   (2377607*zeta2^3)/756 + (240623*zeta2^4)/315 - (254416813*zeta3)/2916 + 
	   (153985*zeta2*zeta3)/162 + (147548*zeta2^2*zeta3)/45 + 
	   (873359*zeta3^2)/54 - (2356*zeta2*zeta3^2)/3 - (107956*zeta5)/3 + 
	   (3706*zeta2*zeta5)/3 + 2552*zeta3*zeta5 - (18568*zeta7)/3) + 
	 nc^2*nl*(-16564962265/314928 - (124242523*zeta2)/8748 + 
	   (1132649*zeta2^2)/2160 + (835607*zeta2^3)/945 + (27268853*zeta3)/1458 + 
	   (93422*zeta2*zeta3)/81 - (16571*zeta2^2*zeta3)/45 - (16928*zeta3^2)/9 + 
	   (241298*zeta5)/27 - (1420*zeta2*zeta5)/3 + (9068*zeta7)/3) + 
	 nc^2*(-1460*nfv - (4345*nfv*zeta2)/3 + (3677*nfv*zeta2^2)/15 - 
	   (85244*nfv*zeta2^3)/315 - (2501*nfv*zeta3)/9 - 239*nfv*zeta2*zeta3 + 
	   392*nfv*zeta2^2*zeta3 + (748*nfv*zeta3^2)/3 - (12970*nfv*zeta5)/9 + 
	   256*nfv*zeta2*zeta5 + 4271*nfv*zeta7) ),


G40 -> ( nc^3*((197609041*bt0)/34992 + (718195*bt0*zeta2)/972 -
	   (13844*bt0*zeta2^2)/45 + (5392*bt0*zeta2^3)/45 - (8816*bt0*zeta3)/3 +
	   (1496*bt0*zeta2*zeta3)/9 + (656*bt0*zeta3^2)/3 - 224*bt0*zeta5) +
	 nc*nl^3*(-18691/6561 + (4*Pi^2)/81 + (16*Pi^4)/1215 + (712*Zeta[3])/243) +
	 nc*(32*bt0^3 - 32*bt0*bt1 + 8*bt2 - (2*bt0^3*Pi^2)/3 + (bt0*bt1*Pi^2)/2 -
	   (bt2*Pi^2)/6 - (47*bt0^3*Pi^4)/720 - 7*bt0^3*Zeta[3] +
	   (28*bt0*bt1*Zeta[3])/3) +
	 nl*(nc^2*((-16790213*bt0)/8748 - (416425*bt0*zeta2)/972 +
     (110*bt0*zeta2^2)/3 + (39110*bt0*zeta3)/81 - (164*bt0*zeta2*zeta3)/9 +
     (400*bt0*zeta5)/3) + nc*((129389*bt0^2)/972 - (5813*bt1)/162 +
     (425*bt0^2*Pi^2)/162 - (37*bt1*Pi^2)/54 - (7*bt0^2*Pi^4)/216 -
     (602*bt0^2*Zeta[3])/27 + (8*bt1*Zeta[3])/3) +
	   nc^3*(-145651/864 - (354343*Pi^2)/8748 - (3557*Pi^4)/9720 +
     (1567*Pi^6)/10206 + (94807*Zeta[3])/486 - (166*Pi^2*Zeta[3])/9 +
     (1360*Zeta[3]^2)/9 - (1114*Zeta[5])/9)) +
	 nl^2*(nc*((258445*bt0)/2187 + (3466*bt0*zeta2)/81 + (40*bt0*zeta2^2)/9 -
     (536*bt0*zeta3)/81) + nc^2*(82181/34992 + (68201*Pi^2)/8748 -
     (331*Pi^4)/1215 + (4262*Zeta[3])/243 + (4*Pi^2*Zeta[3])/3 -
     (332*Zeta[5])/9)) + nc^2*((-3069107*bt0^2)/3888 + (140411*bt1)/648 -
	   12*bt0*nfv - (2795*bt0^2*Pi^2)/648 + (53*bt1*Pi^2)/108 +
	   (1969*bt0^2*Pi^4)/2160 - (11*bt1*Pi^4)/45 - 30*bt0*nfv*zeta2 +
	   (6*bt0*nfv*zeta2^2)/5 - 14*bt0*nfv*zeta3 + 80*bt0*nfv*zeta5 +
	   (7511*bt0^2*Zeta[3])/27 - (170*bt1*Zeta[3])/3 -
	   (47*bt0^2*Pi^2*Zeta[3])/9 + 90*bt0^2*Zeta[5]) +
	 nc^4*(187905439/419904 + (120659*Pi^2)/8748 + (59509*Pi^4)/4860 -
	   (114967*Pi^6)/102060 - (867397*Zeta[3])/486 + (377*Pi^2*Zeta[3])/3 -
	   (164*Pi^4*Zeta[3])/45 - (2350*Zeta[3]^2)/9 + 2978*Zeta[5] -
	   48*Pi^2*Zeta[5] - 1410*Zeta[7]) ),

G41 -> ( nc*((-10739263*nf^3)/4374 - (290230*nf^3*Pi^2)/2187 - (3322*nf^3*Pi^4)/1215 + 
    (83312*nf^3*Zeta[3])/243 + (1640*nf^3*Pi^2*Zeta[3])/243 + 
    nl^3*(8861003/4374 + (67021*Pi^2)/729 + (1514*Pi^4)/1215 - 
      (78464*Zeta[3])/243 - (1496*Pi^2*Zeta[3])/243 - (8176*Zeta[5])/135) + 
    (8776*nf^3*Zeta[5])/135) + nc^2*((68487272627*nf^2)/1889568 + 
    (295056623*nf^2*Pi^2)/157464 + (889*nf^2*Pi^4)/810 - 
    (43559*nf^2*Pi^6)/25515 - (65735207*nf^2*Zeta[3])/6561 + 
    (34096*nf^2*Pi^2*Zeta[3])/2187 + (286844*nf^2*Zeta[3]^2)/729 - 
    (5806624*nf^2*Zeta[5])/1215 + nl^2*(-11685909311/472392 - 
      (79253335*Pi^2)/78732 + (12556*Pi^4)/1215 + (25568*Pi^6)/25515 + 
      (50238557*Zeta[3])/6561 - (50404*Pi^2*Zeta[3])/2187 - 
      (263840*Zeta[3]^2)/729 + (3757504*Zeta[5])/1215)) + 
  nc^4*(43551568175/279936 - (7952*HPLs8a)/9 + (8960*multi5zeta3)/9 + 
    (508636339*Pi^2)/69984 - (898603*Pi^4)/3888 + (289031*Pi^6)/22680 - 
    (602377*Pi^8)/680400 - (27714914*Zeta[3])/243 + 
    (277169*Pi^2*Zeta[3])/324 + (157*Pi^4*Zeta[3])/6 + (57266*Zeta[3]^2)/3 - 
    80*Pi^2*Zeta[3]^2 - (261460*Zeta[5])/27 - (1613*Pi^2*Zeta[5])/9 - 
    6128*Zeta[3]*Zeta[5] + (40421*Zeta[7])/4) + 
  nc^3*((-555003607961*nf)/3779136 - (785989381*nf*Pi^2)/104976 + 
    (34077673*nf*Pi^4)/262440 + (146197*nf*Pi^6)/76545 + 
    (1774255975*nf*Zeta[3])/26244 - (265217*nf*Pi^2*Zeta[3])/486 + 
    (21536*nf*Pi^4*Zeta[3])/3645 - (3892540*nf*Zeta[3]^2)/729 + 
    (56656921*nf*Zeta[5])/2430 + (117314*nf*Pi^2*Zeta[5])/405 - 
    (1643545*nf*Zeta[7])/126 + nl*(250534673993/3779136 + 
      (280322971*Pi^2)/104976 - (23137003*Pi^4)/262440 - 
      (55199*Pi^6)/153090 - (843096067*Zeta[3])/26244 + 
      (222623*Pi^2*Zeta[3])/486 - (28961*Pi^4*Zeta[3])/3645 + 
      (1791886*Zeta[3]^2)/729 - (12741563*Zeta[5])/1215 - 
      (108944*Pi^2*Zeta[5])/405 + (632174*Zeta[7])/63)) ),

(*------------------------*)
(* K in planar limit      *)
(* See Eq. (4.4) of paper *)
(*------------------------*)

K1 -> (-nc),
K2 -> ((-827*nc^2)/108 + (5*nc*nl)/27 - (3*nc^2*Pi^2)/2 + (nc*nl*Pi^2)/3 +
   18*nc^2*Zeta[3]),
K3 -> ((-93823*nc^3)/2916 - (859*nc^2*nl)/2916 + (2201*nc*nl^2)/729 -
   (14929*nc^3*Pi^2)/972 + (2963*nc^2*nl*Pi^2)/486 - (10*nc*nl^2*Pi^2)/27 +
   (11*nc^3*Pi^4)/135 - (2*nc^2*nl*Pi^4)/135 + (949*nc^3*Zeta[3])/3 -
   (1108*nc^2*nl*Zeta[3])/27 - (8*nc*nl^2*Zeta[3])/27 -
   (32*nc^3*Pi^2*Zeta[3])/9 - 172*nc^3*Zeta[5]),

(*------------------------*)
(* C in planar limit      *)
(* See Eq. (4.2) of paper *)
(*------------------------*)

C10 -> ( nc*(2 + Pi^2/12) ),
C11 -> ( nc*(4 + Pi^2/24 - Zeta[3]/3) ),
C12 -> ( nc*(8 + Pi^2/6 + Pi^4/160 - Zeta[3]/6) ),
C13 -> ( nc*(16 + Pi^2/3 + Pi^4/320 - (2*Zeta[3])/3 - (Pi^2*Zeta[3])/36 - Zeta[5]/5) ),
C14 -> ( nc*(32 + (2*Pi^2)/3 + Pi^4/80 + (61*Pi^6)/120960 - (4*Zeta[3])/3 - 
	  (Pi^2*Zeta[3])/72 + Zeta[3]^2/18 - Zeta[5]/10) ),
C20 -> ( nc*nl*(-1541/648 - (37*Pi^2)/108 - (13*Zeta[3])/9) + 
	 nc^2*(45275/2592 + (557*Pi^2)/216 - (39*Pi^4)/160 + (31*Zeta[3])/9) ),
C21 -> ( nc*nl*(-46205/3888 - (673*Pi^2)/648 - (49*Pi^4)/360 - (91*Zeta[3])/27) + 
	 nc^2*(1124291/15552 + (26383*Pi^2)/2592 + (727*Pi^4)/1440 + 
	   (125*Zeta[3])/54 + (5*Pi^2*Zeta[3])/18 - (211*Zeta[5])/2) ),
C22 -> ( nc*nl*(-1063589/23328 - (15481*Pi^2)/3888 - (1607*Pi^4)/4320 - 
	   (1711*Zeta[3])/162 - (28*Pi^2*Zeta[3])/27 - (361*Zeta[5])/15) + 
	 nc^2*(23123195/93312 + (524455*Pi^2)/15552 + (6205*Pi^4)/3456 - 
	   (150767*Pi^6)/362880 + (37969*Zeta[3])/648 + (323*Pi^2*Zeta[3])/54 - 
	   (341*Zeta[3]^2)/18 + (403*Zeta[5])/15) ),
C30 -> ( nc*nl^2*(58883/26244 + (145*Pi^2)/243 + (221*Pi^4)/2430 + 
	   (1072*Zeta[3])/243) + nc^3*(10907077/52488 + (15763067*Pi^2)/279936 - 
	   (116957*Pi^4)/38880 + (145051*Pi^6)/653184 - (15743*Zeta[3])/486 + 
	   (533*Pi^2*Zeta[3])/108 + (298*Zeta[3]^2)/9 - 357*Zeta[5]) + 
	 nc^2*nl*(-6389497/104976 - (1160555*Pi^2)/69984 - (1337*Pi^4)/6480 - 
	   (296*Zeta[3])/9 - (77*Pi^2*Zeta[3])/108 + (602*Zeta[5])/9) + 
	 nc^2*(-2*nfv - (5*nfv*Pi^2)/6 + (nfv*Pi^4)/180 - (7*nfv*Zeta[3])/3 + 
	   (40*nfv*Zeta[5])/3))
}

(*-----------------------------------*)
(* Coefficients of QCD beta function *)
(* bt3: in planar limit              *)
(*-----------------------------------*)

subs3 = {
bt0 -> (11/3*Ca-2/3*nf),
bt1 -> (34/3*Ca^2-4*nf*Tf*Cf-20/3*nf*Tf*Ca),
bt2 -> (2857/54*Ca^3-1415/27*Ca^2*Tf*nf+158/27*Ca*Tf^2*nf^2
       +44/9*Cf*Tf^2*nf^2-205/9*Cf*Ca*Tf*nf+2*Cf^2*Tf*nf),
bt3 -> ((150473*nc^4)/486 - (485513*nc^3*nl)/1944 + (8654*nc^2*nl^2)/243 +
 (130*nc*nl^3)/243 + (44*nc^4*Zeta[3])/9 - (20*nc^3*nl*Zeta[3])/9 +
 (28*nc^2*nl^2*Zeta[3])/3)
}

(*-------------------------------------------------------------------*)
(* Large-nc limit in SU(nc) gauge theory                               *)
(* N4 = (nc^2-4)/nc which appears in 3-loop massless quark form factors*)
(*                 Look at 1010.4478                                 *)
(* nl is the number of light quarks: nf = nl+1                       *)
(*-------------------------------------------------------------------*)

subs4 = {
Ca -> nc,
Cf -> nc/2,
Tf -> 1/2,
nf -> nl,
N4 -> nc,
nfv -> 0,
zeta2 -> Zeta[2],
zeta3 -> Zeta[3],
zeta5 -> Zeta[5],
zeta7 -> Zeta[7],
HPLs8a -> (Zeta[8]+multi5zeta3)
}

(*---------------------------------*)
(* Massive: lnF1mv up to 4-loop    *)
(* See Eq.(2.20) of Paper          *)
(*---------------------------------*)

lnF1mv1l = ( (G1*LQm)/2 - (A1*LQm^2)/4 + (-G1/2 - K1/2 + (A1*LQm)/2)/ep + 
 ep*(-(G1*LQm^2)/4 + (A1*LQm^3)/12) + ep^2*((G1*LQm^3)/12 - (A1*LQm^4)/48) + 
 ep^3*(-(G1*LQm^4)/48 + (A1*LQm^5)/240) + 
 ep^4*((G1*LQm^5)/240 - (A1*LQm^6)/1440) );

lnF1mv1lres = Collect[Expand[Normal[Series[lnF1mv1l /. subs1 /. subs2 /. subs3 /. subs4, {ep, 0, 4}]]], {ep, nc, nl}];

lnF1mv2l = ( (G2*LQm)/2 - (A2*LQm^2)/4 - (bt0*G1*LQm^2)/4 + (A1*bt0*LQm^3)/12 + 
 (-G2/4 - K2/4 + (A2*LQm)/4)/ep + ((bt0*G1)/4 + (bt0*K1)/4 - (A1*bt0*LQm)/4)/
  ep^2 + ep*(-(G2*LQm^2)/2 + (A2*LQm^3)/6 + (bt0*G1*LQm^3)/4 - 
   (A1*bt0*LQm^4)/16) + ep^2*((G2*LQm^3)/3 - (A2*LQm^4)/12 - 
   (7*bt0*G1*LQm^4)/48 + (7*A1*bt0*LQm^5)/240) + 
 ep^3*(-(G2*LQm^4)/6 + (A2*LQm^5)/30 + (bt0*G1*LQm^5)/16 - (A1*bt0*LQm^6)/96) );

lnF1mv2lres = Collect[Expand[Normal[Series[lnF1mv2l /. subs1 /. subs2 /. subs3 /. subs4, {ep, 0, 2}]]], {ep, nc, nl}];

lnF1mv3l = ( (G3*LQm)/2 - (A3*LQm^2)/4 - (bt1*G1*LQm^2)/4 - (bt0*G2*LQm^2)/2 + 
 (A2*bt0*LQm^3)/6 + (A1*bt1*LQm^3)/12 + (bt0^2*G1*LQm^3)/6 - 
 (A1*bt0^2*LQm^4)/24 + (-G3/6 - K3/6 + (A3*LQm)/6)/ep + 
 (-(bt0^2*G1)/6 - (bt0^2*K1)/6 + (A1*bt0^2*LQm)/6)/ep^3 + 
 ((bt1*G1)/6 + (bt0*G2)/6 + (bt1*K1)/6 + (bt0*K2)/6 - (A2*bt0*LQm)/6 - 
   (A1*bt1*LQm)/6)/ep^2 + ep*((-3*G3*LQm^2)/4 + (A3*LQm^3)/4 + 
   (bt1*G1*LQm^3)/3 + (5*bt0*G2*LQm^3)/6 - (5*A2*bt0*LQm^4)/24 - 
   (A1*bt1*LQm^4)/12 - (bt0^2*G1*LQm^4)/4 + (A1*bt0^2*LQm^5)/20) + 
 ep^2*((3*G3*LQm^3)/4 - (3*A3*LQm^4)/16 - (13*bt1*G1*LQm^4)/48 - 
   (19*bt0*G2*LQm^4)/24 + (19*A2*bt0*LQm^5)/120 + (13*A1*bt1*LQm^5)/240 + 
   (5*bt0^2*G1*LQm^5)/24 - (5*A1*bt0^2*LQm^6)/144) );

lnF1mv3lres = Collect[Expand[Normal[Series[lnF1mv3l /. subs1 /. subs2 /. subs3 /. subs4, {ep, 0, 0}]]], {ep, nc, nl, nfv}];

lnF1mv4l = ( (G4*LQm)/2 - (A4*LQm^2)/4 - (bt2*G1*LQm^2)/4 - (bt1*G2*LQm^2)/2 - 
 (3*bt0*G3*LQm^2)/4 + (A3*bt0*LQm^3)/4 + (A2*bt1*LQm^3)/6 + 
 (A1*bt2*LQm^3)/12 + (5*bt0*bt1*G1*LQm^3)/12 + (bt0^2*G2*LQm^3)/2 - 
 (A2*bt0^2*LQm^4)/8 - (5*A1*bt0*bt1*LQm^4)/48 - (bt0^3*G1*LQm^4)/8 + 
 (A1*bt0^3*LQm^5)/40 + (-G4/8 - K4/8 + (A4*LQm)/8)/ep + 
 ((bt0^3*G1)/8 + (bt0^3*K1)/8 - (A1*bt0^3*LQm)/8)/ep^4 + 
 (-(bt0*bt1*G1)/4 - (bt0^2*G2)/8 - (bt0*bt1*K1)/4 - (bt0^2*K2)/8 + 
   (A2*bt0^2*LQm)/8 + (A1*bt0*bt1*LQm)/4)/ep^3 + 
 ((bt2*G1)/8 + (bt1*G2)/8 + (bt0*G3)/8 + (bt2*K1)/8 + (bt1*K2)/8 + 
   (bt0*K3)/8 - (A3*bt0*LQm)/8 - (A2*bt1*LQm)/8 - (A1*bt2*LQm)/8)/ep^2 + 
 ep*(-(G4*LQm^2) + (A4*LQm^3)/3 + (5*bt2*G1*LQm^3)/12 + bt1*G2*LQm^3 + 
   (7*bt0*G3*LQm^3)/4 - (7*A3*bt0*LQm^4)/16 - (A2*bt1*LQm^4)/4 - 
   (5*A1*bt2*LQm^4)/48 - (19*bt0*bt1*G1*LQm^4)/24 - (9*bt0^2*G2*LQm^4)/8 + 
   (9*A2*bt0^2*LQm^5)/40 + (19*A1*bt0*bt1*LQm^5)/120 + (bt0^3*G1*LQm^5)/4 - 
   (A1*bt0^3*LQm^6)/24) );

lnF1mv4lres = Collect[Expand[Normal[Series[lnF1mv4l /. subs1 /. subs2 /. subs3 /. subs4, {ep, 0, -2}]]], {ep, nc, nl, nfv}];

(*--------------------------------*)
(* Massive Form factors: F1mv     *)
(* See Eq. (2.2) & (4.6) of paper *)
(*--------------------------------*)

F1mv1l = ( C1 + (G1*LQm)/2 - (A1*LQm^2)/4 + (-G1/2 - K1/2 + (A1*LQm)/2)/ep + 
 ep*(-(G1*LQm^2)/4 + (A1*LQm^3)/12) + ep^2*((G1*LQm^3)/12 - (A1*LQm^4)/48) + 
 ep^3*(-(G1*LQm^4)/48 + (A1*LQm^5)/240) + 
 ep^4*((G1*LQm^5)/240 - (A1*LQm^6)/1440) );
F1mv1lres = Collect[Expand[Normal[Series[F1mv1l /. subs1 /. subs2 /. subs3 /. subs4, {ep, 0, 4}]]], {ep, nc, nl, nfv}];

F1mv2l = ( C2 + (C1*G1*LQm)/2 + (G2*LQm)/2 - (A2*LQm^2)/4 - (A1*C1*LQm^2)/4 - 
 (bt0*G1*LQm^2)/4 + (G1^2*LQm^2)/4 + (G1*K1*LQm^2)/8 + (A1*bt0*LQm^3)/12 - 
 (7*A1*G1*LQm^3)/24 - (A1*K1*LQm^3)/24 + (7*A1^2*LQm^4)/96 + 
 ((bt0*G1)/4 + G1^2/8 + (bt0*K1)/4 + (G1*K1)/4 + K1^2/8 - (A1*bt0*LQm)/4 - 
   (A1*G1*LQm)/4 - (A1*K1*LQm)/4 + (A1^2*LQm^2)/8)/ep^2 + 
 (-(C1*G1)/2 - G2/4 - (C1*K1)/2 - K2/4 + (A2*LQm)/4 + (A1*C1*LQm)/2 - 
   (G1^2*LQm)/4 - (G1*K1*LQm)/4 + (3*A1*G1*LQm^2)/8 + (A1*K1*LQm^2)/8 - 
   (A1^2*LQm^3)/8)/ep + ep*(-(C1*G1*LQm^2)/4 - (G2*LQm^2)/2 + (A2*LQm^3)/6 + 
   (A1*C1*LQm^3)/12 + (bt0*G1*LQm^3)/4 - (G1^2*LQm^3)/6 - (G1*K1*LQm^3)/24 - 
   (A1*bt0*LQm^4)/16 + (5*A1*G1*LQm^4)/32 + (A1*K1*LQm^4)/96 - 
   (A1^2*LQm^5)/32) + ep^2*((C1*G1*LQm^3)/12 + (G2*LQm^3)/3 - (A2*LQm^4)/12 - 
   (A1*C1*LQm^4)/48 - (7*bt0*G1*LQm^4)/48 + (G1^2*LQm^4)/12 + 
   (G1*K1*LQm^4)/96 + (7*A1*bt0*LQm^5)/240 - (31*A1*G1*LQm^5)/480 - 
   (A1*K1*LQm^5)/480 + (31*A1^2*LQm^6)/2880) + 
 ep^3*(-(C1*G1*LQm^4)/48 - (G2*LQm^4)/6 + (A2*LQm^5)/30 + (A1*C1*LQm^5)/240 + 
   (bt0*G1*LQm^5)/16 - (G1^2*LQm^5)/30 - (G1*K1*LQm^5)/480 - 
   (A1*bt0*LQm^6)/96 + (7*A1*G1*LQm^6)/320 + (A1*K1*LQm^6)/2880 - 
   (A1^2*LQm^7)/320) );
F1mv2lres = Collect[Expand[Normal[Series[F1mv2l /. subs1 /. subs2 /. subs3 /. subs4, {ep, 0, 2}]]], {ep, nc, nl, nfv}];

F1mv3l = ( C3 + (C2*G1*LQm)/2 + (C1*G2*LQm)/2 + (G3*LQm)/2 - (A3*LQm^2)/4 - 
 (A2*C1*LQm^2)/4 - (A1*C2*LQm^2)/4 - (bt1*G1*LQm^2)/4 - (bt0*C1*G1*LQm^2)/4 + 
 (C1*G1^2*LQm^2)/4 - (bt0*G2*LQm^2)/2 + (9*G1*G2*LQm^2)/16 + 
 (C1*G1*K1*LQm^2)/8 + (G2*K1*LQm^2)/4 + (G1*K2*LQm^2)/16 + (A2*bt0*LQm^3)/6 + 
 (A1*bt1*LQm^3)/12 + (A1*bt0*C1*LQm^3)/12 - (13*A2*G1*LQm^3)/48 + 
 (bt0^2*G1*LQm^3)/6 - (7*A1*C1*G1*LQm^3)/24 - (11*bt0*G1^2*LQm^3)/48 + 
 (3*G1^3*LQm^3)/32 - (19*A1*G2*LQm^3)/48 - (A2*K1*LQm^3)/12 - 
 (A1*C1*K1*LQm^3)/24 - (5*bt0*G1*K1*LQm^3)/48 + (G1^2*K1*LQm^3)/12 + 
 (G1*K1^2*LQm^3)/96 - (A1*K2*LQm^3)/48 + (A1*A2*LQm^4)/6 - 
 (A1*bt0^2*LQm^4)/24 + (7*A1^2*C1*LQm^4)/96 + (15*A1*bt0*G1*LQm^4)/64 - 
 (65*A1*G1^2*LQm^4)/384 + (5*A1*bt0*K1*LQm^4)/192 - (5*A1*G1*K1*LQm^4)/64 - 
 (A1*K1^2*LQm^4)/384 - (3*A1^2*bt0*LQm^5)/64 + (3*A1^2*G1*LQm^5)/32 + 
 (A1^2*K1*LQm^5)/64 - (A1^3*LQm^6)/64 + 
 (-(bt0^2*G1)/6 - (bt0*G1^2)/8 - G1^3/48 - (bt0^2*K1)/6 - (bt0*G1*K1)/4 - 
   (G1^2*K1)/16 - (bt0*K1^2)/8 - (G1*K1^2)/16 - K1^3/48 + (A1*bt0^2*LQm)/6 + 
   (A1*bt0*G1*LQm)/4 + (A1*G1^2*LQm)/16 + (A1*bt0*K1*LQm)/4 + 
   (A1*G1*K1*LQm)/8 + (A1*K1^2*LQm)/16 - (A1^2*bt0*LQm^2)/8 - 
   (A1^2*G1*LQm^2)/16 - (A1^2*K1*LQm^2)/16 + (A1^3*LQm^3)/48)/ep^3 + 
 ((bt1*G1)/6 + (bt0*C1*G1)/4 + (C1*G1^2)/8 + (bt0*G2)/6 + (G1*G2)/8 + 
   (bt1*K1)/6 + (bt0*C1*K1)/4 + (C1*G1*K1)/4 + (G2*K1)/8 + (C1*K1^2)/8 + 
   (bt0*K2)/6 + (G1*K2)/8 + (K1*K2)/8 - (A2*bt0*LQm)/6 - (A1*bt1*LQm)/6 - 
   (A1*bt0*C1*LQm)/4 - (A2*G1*LQm)/8 - (A1*C1*G1*LQm)/4 + (bt0*G1^2*LQm)/8 + 
   (G1^3*LQm)/16 - (A1*G2*LQm)/8 - (A2*K1*LQm)/8 - (A1*C1*K1*LQm)/4 + 
   (bt0*G1*K1*LQm)/8 + (G1^2*K1*LQm)/8 + (G1*K1^2*LQm)/16 - (A1*K2*LQm)/8 + 
   (A1*A2*LQm^2)/8 + (A1^2*C1*LQm^2)/8 - (3*A1*bt0*G1*LQm^2)/16 - 
   (5*A1*G1^2*LQm^2)/32 - (A1*bt0*K1*LQm^2)/16 - (3*A1*G1*K1*LQm^2)/16 - 
   (A1*K1^2*LQm^2)/32 + (A1^2*bt0*LQm^3)/16 + (A1^2*G1*LQm^3)/8 + 
   (A1^2*K1*LQm^3)/16 - (A1^3*LQm^4)/32)/ep^2 + 
 (-(C2*G1)/2 - (C1*G2)/4 - G3/6 - (C2*K1)/2 - (C1*K2)/4 - K3/6 + (A3*LQm)/6 + 
   (A2*C1*LQm)/4 + (A1*C2*LQm)/2 - (C1*G1^2*LQm)/4 - (3*G1*G2*LQm)/8 - 
   (C1*G1*K1*LQm)/4 - (G2*K1*LQm)/4 - (G1*K2*LQm)/8 + (A2*G1*LQm^2)/4 + 
   (3*A1*C1*G1*LQm^2)/8 + (bt0*G1^2*LQm^2)/16 - (3*G1^3*LQm^2)/32 + 
   (5*A1*G2*LQm^2)/16 + (A2*K1*LQm^2)/8 + (A1*C1*K1*LQm^2)/8 + 
   (bt0*G1*K1*LQm^2)/16 - (G1^2*K1*LQm^2)/8 - (G1*K1^2*LQm^2)/32 + 
   (A1*K2*LQm^2)/16 - (3*A1*A2*LQm^3)/16 - (A1^2*C1*LQm^3)/8 - 
   (A1*bt0*G1*LQm^3)/12 + (19*A1*G1^2*LQm^3)/96 - (A1*bt0*K1*LQm^3)/48 + 
   (7*A1*G1*K1*LQm^3)/48 + (A1*K1^2*LQm^3)/96 + (A1^2*bt0*LQm^4)/48 - 
   (25*A1^2*G1*LQm^4)/192 - (7*A1^2*K1*LQm^4)/192 + (5*A1^3*LQm^5)/192)/ep + 
 ep*(-(C2*G1*LQm^2)/4 - (C1*G2*LQm^2)/2 - (3*G3*LQm^2)/4 + (A3*LQm^3)/4 + 
   (A2*C1*LQm^3)/6 + (A1*C2*LQm^3)/12 + (bt1*G1*LQm^3)/3 + 
   (bt0*C1*G1*LQm^3)/4 - (C1*G1^2*LQm^3)/6 + (5*bt0*G2*LQm^3)/6 - 
   (9*G1*G2*LQm^3)/16 - (C1*G1*K1*LQm^3)/24 - (G2*K1*LQm^3)/6 - 
   (G1*K2*LQm^3)/48 - (5*A2*bt0*LQm^4)/24 - (A1*bt1*LQm^4)/12 - 
   (A1*bt0*C1*LQm^4)/16 + (5*A2*G1*LQm^4)/24 - (bt0^2*G1*LQm^4)/4 + 
   (5*A1*C1*G1*LQm^4)/32 + (49*bt0*G1^2*LQm^4)/192 - (9*G1^3*LQm^4)/128 + 
   (65*A1*G2*LQm^4)/192 + (A2*K1*LQm^4)/24 + (A1*C1*K1*LQm^4)/96 + 
   (13*bt0*G1*K1*LQm^4)/192 - (G1^2*K1*LQm^4)/24 - (G1*K1^2*LQm^4)/384 + 
   (A1*K2*LQm^4)/192 - (7*A1*A2*LQm^5)/64 + (A1*bt0^2*LQm^5)/20 - 
   (A1^2*C1*LQm^5)/32 - (13*A1*bt0*G1*LQm^5)/60 + (211*A1*G1^2*LQm^5)/1920 - 
   (13*A1*bt0*K1*LQm^5)/960 + (31*A1*G1*K1*LQm^5)/960 + 
   (A1*K1^2*LQm^5)/1920 + (13*A1^2*bt0*LQm^6)/360 - 
   (301*A1^2*G1*LQm^6)/5760 - (31*A1^2*K1*LQm^6)/5760 + 
   (43*A1^3*LQm^7)/5760) + ep^2*((C2*G1*LQm^3)/12 + (C1*G2*LQm^3)/3 + 
   (3*G3*LQm^3)/4 - (3*A3*LQm^4)/16 - (A2*C1*LQm^4)/12 - (A1*C2*LQm^4)/48 - 
   (13*bt1*G1*LQm^4)/48 - (7*bt0*C1*G1*LQm^4)/48 + (C1*G1^2*LQm^4)/12 - 
   (19*bt0*G2*LQm^4)/24 + (27*G1*G2*LQm^4)/64 + (C1*G1*K1*LQm^4)/96 + 
   (G2*K1*LQm^4)/12 + (G1*K2*LQm^4)/192 + (19*A2*bt0*LQm^5)/120 + 
   (13*A1*bt1*LQm^5)/240 + (7*A1*bt0*C1*LQm^5)/240 - (121*A2*G1*LQm^5)/960 + 
   (5*bt0^2*G1*LQm^5)/24 - (31*A1*C1*G1*LQm^5)/480 - 
   (179*bt0*G1^2*LQm^5)/960 + (27*G1^3*LQm^5)/640 - (211*A1*G2*LQm^5)/960 - 
   (A2*K1*LQm^5)/60 - (A1*C1*K1*LQm^5)/480 - (29*bt0*G1*K1*LQm^5)/960 + 
   (G1^2*K1*LQm^5)/60 + (G1*K1^2*LQm^5)/1920 - (A1*K2*LQm^5)/960 + 
   (83*A1*A2*LQm^6)/1440 - (5*A1*bt0^2*LQm^6)/144 + (31*A1^2*C1*LQm^6)/2880 + 
   (259*A1*bt0*G1*LQm^6)/1920 - (133*A1*G1^2*LQm^6)/2304 + 
   (29*A1*bt0*K1*LQm^6)/5760 - (7*A1*G1*K1*LQm^6)/640 - 
   (A1*K1^2*LQm^6)/11520 - (37*A1^2*bt0*LQm^7)/1920 + 
   (23*A1^2*G1*LQm^7)/960 + (A1^2*K1*LQm^7)/640 - (23*A1^3*LQm^8)/7680) );
F1mv3lres = Collect[Expand[Normal[Series[F1mv3l /. subs1 /. subs2 /. subs3 /. subs4, {ep, 0, 0}]]], {ep, nc, nl, nfv}];

F1mv4l = ( C4 + (C3*G1*LQm)/2 + (C2*G2*LQm)/2 + (C1*G3*LQm)/2 + (G4*LQm)/2 - 
 (A4*LQm^2)/4 - (A3*C1*LQm^2)/4 - (A2*C2*LQm^2)/4 - (A1*C3*LQm^2)/4 - 
 (bt2*G1*LQm^2)/4 - (bt1*C1*G1*LQm^2)/4 - (bt0*C2*G1*LQm^2)/4 + 
 (C2*G1^2*LQm^2)/4 - (bt1*G2*LQm^2)/2 - (bt0*C1*G2*LQm^2)/2 + 
 (9*C1*G1*G2*LQm^2)/16 + (G2^2*LQm^2)/4 - (3*bt0*G3*LQm^2)/4 + 
 (2*G1*G3*LQm^2)/3 + (C2*G1*K1*LQm^2)/8 + (C1*G2*K1*LQm^2)/4 + 
 (3*G3*K1*LQm^2)/8 + (C1*G1*K2*LQm^2)/16 + (G2*K2*LQm^2)/8 + 
 (G1*K3*LQm^2)/24 + (A3*bt0*LQm^3)/4 + (A2*bt1*LQm^3)/6 + (A1*bt2*LQm^3)/12 + 
 (A2*bt0*C1*LQm^3)/6 + (A1*bt1*C1*LQm^3)/12 + (A1*bt0*C2*LQm^3)/12 - 
 (7*A3*G1*LQm^3)/24 + (5*bt0*bt1*G1*LQm^3)/12 - (13*A2*C1*G1*LQm^3)/48 + 
 (bt0^2*C1*G1*LQm^3)/6 - (7*A1*C2*G1*LQm^3)/24 - (5*bt1*G1^2*LQm^3)/18 - 
 (11*bt0*C1*G1^2*LQm^3)/48 + (3*C1*G1^3*LQm^3)/32 - (7*A2*G2*LQm^3)/24 + 
 (bt0^2*G2*LQm^3)/2 - (19*A1*C1*G2*LQm^3)/48 - (109*bt0*G1*G2*LQm^3)/144 + 
 (G1^2*G2*LQm^3)/3 - (37*A1*G3*LQm^3)/72 - (A3*K1*LQm^3)/8 - 
 (A2*C1*K1*LQm^3)/12 - (A1*C2*K1*LQm^3)/24 - (11*bt1*G1*K1*LQm^3)/72 - 
 (5*bt0*C1*G1*K1*LQm^3)/48 + (C1*G1^2*K1*LQm^3)/12 - (bt0*G2*K1*LQm^3)/3 + 
 (9*G1*G2*K1*LQm^3)/32 + (C1*G1*K1^2*LQm^3)/96 + (G2*K1^2*LQm^3)/24 - 
 (A2*K2*LQm^3)/24 - (A1*C1*K2*LQm^3)/48 - (7*bt0*G1*K2*LQm^3)/144 + 
 (G1^2*K2*LQm^3)/24 + (G1*K1*K2*LQm^3)/96 - (A1*K3*LQm^3)/72 + 
 (7*A2^2*LQm^4)/96 + (29*A1*A3*LQm^4)/144 - (A2*bt0^2*LQm^4)/8 - 
 (5*A1*bt0*bt1*LQm^4)/48 + (A1*A2*C1*LQm^4)/6 - (A1*bt0^2*C1*LQm^4)/24 + 
 (7*A1^2*C2*LQm^4)/96 + (5*A2*bt0*G1*LQm^4)/18 - (bt0^3*G1*LQm^4)/8 + 
 (85*A1*bt1*G1*LQm^4)/288 + (15*A1*bt0*C1*G1*LQm^4)/64 - 
 (5*A2*G1^2*LQm^4)/32 + (119*bt0^2*G1^2*LQm^4)/576 - 
 (65*A1*C1*G1^2*LQm^4)/384 - (47*bt0*G1^3*LQm^4)/384 + (G1^4*LQm^4)/36 + 
 (295*A1*bt0*G2*LQm^4)/576 - (175*A1*G1*G2*LQm^4)/384 + 
 (A2*bt0*K1*LQm^4)/12 + (11*A1*bt1*K1*LQm^4)/288 + 
 (5*A1*bt0*C1*K1*LQm^4)/192 - (5*A2*G1*K1*LQm^4)/48 + 
 (53*bt0^2*G1*K1*LQm^4)/576 - (5*A1*C1*G1*K1*LQm^4)/64 - 
 (41*bt0*G1^2*K1*LQm^4)/384 + (9*G1^3*K1*LQm^4)/256 - 
 (65*A1*G2*K1*LQm^4)/384 - (A2*K1^2*LQm^4)/96 - (A1*C1*K1^2*LQm^4)/384 - 
 (bt0*G1*K1^2*LQm^4)/64 + (G1^2*K1^2*LQm^4)/96 + (G1*K1^3*LQm^4)/2304 + 
 (7*A1*bt0*K2*LQm^4)/576 - (5*A1*G1*K2*LQm^4)/128 - (A1*K1*K2*LQm^4)/384 - 
 (91*A1*A2*bt0*LQm^5)/576 + (A1*bt0^3*LQm^5)/40 - (17*A1^2*bt1*LQm^5)/288 - 
 (3*A1^2*bt0*C1*LQm^5)/64 + (25*A1*A2*G1*LQm^5)/128 - 
 (31*A1*bt0^2*G1*LQm^5)/160 + (3*A1^2*C1*G1*LQm^5)/32 + 
 (33*A1*bt0*G1^2*LQm^5)/160 - (781*A1*G1^3*LQm^5)/11520 + 
 (19*A1^2*G2*LQm^5)/128 + (7*A1*A2*K1*LQm^5)/128 - 
 (53*A1*bt0^2*K1*LQm^5)/2880 + (A1^2*C1*K1*LQm^5)/64 + 
 (59*A1*bt0*G1*K1*LQm^5)/640 - (211*A1*G1^2*K1*LQm^5)/3840 + 
 (A1*bt0*K1^2*LQm^5)/320 - (31*A1*G1*K1^2*LQm^5)/3840 - 
 (A1*K1^3*LQm^5)/11520 + (A1^2*K2*LQm^5)/128 - (11*A1^2*A2*LQm^6)/192 + 
 (31*A1^2*bt0^2*LQm^6)/960 - (A1^3*C1*LQm^6)/64 - 
 (133*A1^2*bt0*G1*LQm^6)/1280 + (1351*A1^2*G1^2*LQm^6)/23040 - 
 (59*A1^2*bt0*K1*LQm^6)/3840 + (301*A1^2*G1*K1*LQm^6)/11520 + 
 (31*A1^2*K1^2*LQm^6)/23040 + (19*A1^3*bt0*LQm^7)/1280 - 
 (27*A1^3*G1*LQm^7)/1280 - (43*A1^3*K1*LQm^7)/11520 + (27*A1^4*LQm^8)/10240 + 
 ((bt0^3*G1)/8 + (11*bt0^2*G1^2)/96 + (bt0*G1^3)/32 + G1^4/384 + 
   (bt0^3*K1)/8 + (11*bt0^2*G1*K1)/48 + (3*bt0*G1^2*K1)/32 + (G1^3*K1)/96 + 
   (11*bt0^2*K1^2)/96 + (3*bt0*G1*K1^2)/32 + (G1^2*K1^2)/64 + (bt0*K1^3)/32 + 
   (G1*K1^3)/96 + K1^4/384 - (A1*bt0^3*LQm)/8 - (11*A1*bt0^2*G1*LQm)/48 - 
   (3*A1*bt0*G1^2*LQm)/32 - (A1*G1^3*LQm)/96 - (11*A1*bt0^2*K1*LQm)/48 - 
   (3*A1*bt0*G1*K1*LQm)/16 - (A1*G1^2*K1*LQm)/32 - (3*A1*bt0*K1^2*LQm)/32 - 
   (A1*G1*K1^2*LQm)/32 - (A1*K1^3*LQm)/96 + (11*A1^2*bt0^2*LQm^2)/96 + 
   (3*A1^2*bt0*G1*LQm^2)/32 + (A1^2*G1^2*LQm^2)/64 + 
   (3*A1^2*bt0*K1*LQm^2)/32 + (A1^2*G1*K1*LQm^2)/32 + (A1^2*K1^2*LQm^2)/64 - 
   (A1^3*bt0*LQm^3)/32 - (A1^3*G1*LQm^3)/96 - (A1^3*K1*LQm^3)/96 + 
   (A1^4*LQm^4)/384)/ep^4 + (-(bt0*bt1*G1)/4 - (bt0^2*C1*G1)/6 - 
   (bt1*G1^2)/12 - (bt0*C1*G1^2)/8 - (C1*G1^3)/48 - (bt0^2*G2)/8 - 
   (7*bt0*G1*G2)/48 - (G1^2*G2)/32 - (bt0*bt1*K1)/4 - (bt0^2*C1*K1)/6 - 
   (bt1*G1*K1)/6 - (bt0*C1*G1*K1)/4 - (C1*G1^2*K1)/16 - (7*bt0*G2*K1)/48 - 
   (G1*G2*K1)/16 - (bt1*K1^2)/12 - (bt0*C1*K1^2)/8 - (C1*G1*K1^2)/16 - 
   (G2*K1^2)/32 - (C1*K1^3)/48 - (bt0^2*K2)/8 - (7*bt0*G1*K2)/48 - 
   (G1^2*K2)/32 - (7*bt0*K1*K2)/48 - (G1*K1*K2)/16 - (K1^2*K2)/32 + 
   (A2*bt0^2*LQm)/8 + (A1*bt0*bt1*LQm)/4 + (A1*bt0^2*C1*LQm)/6 + 
   (7*A2*bt0*G1*LQm)/48 + (A1*bt1*G1*LQm)/6 + (A1*bt0*C1*G1*LQm)/4 + 
   (A2*G1^2*LQm)/32 - (bt0^2*G1^2*LQm)/12 + (A1*C1*G1^2*LQm)/16 - 
   (bt0*G1^3*LQm)/16 - (G1^4*LQm)/96 + (7*A1*bt0*G2*LQm)/48 + 
   (A1*G1*G2*LQm)/16 + (7*A2*bt0*K1*LQm)/48 + (A1*bt1*K1*LQm)/6 + 
   (A1*bt0*C1*K1*LQm)/4 + (A2*G1*K1*LQm)/16 - (bt0^2*G1*K1*LQm)/12 + 
   (A1*C1*G1*K1*LQm)/8 - (bt0*G1^2*K1*LQm)/8 - (G1^3*K1*LQm)/32 + 
   (A1*G2*K1*LQm)/16 + (A2*K1^2*LQm)/32 + (A1*C1*K1^2*LQm)/16 - 
   (bt0*G1*K1^2*LQm)/16 - (G1^2*K1^2*LQm)/32 - (G1*K1^3*LQm)/96 + 
   (7*A1*bt0*K2*LQm)/48 + (A1*G1*K2*LQm)/16 + (A1*K1*K2*LQm)/16 - 
   (7*A1*A2*bt0*LQm^2)/48 - (A1^2*bt1*LQm^2)/12 - (A1^2*bt0*C1*LQm^2)/8 - 
   (A1*A2*G1*LQm^2)/16 + (A1*bt0^2*G1*LQm^2)/8 - (A1^2*C1*G1*LQm^2)/16 + 
   (5*A1*bt0*G1^2*LQm^2)/32 + (7*A1*G1^3*LQm^2)/192 - (A1^2*G2*LQm^2)/32 - 
   (A1*A2*K1*LQm^2)/16 + (A1*bt0^2*K1*LQm^2)/24 - (A1^2*C1*K1*LQm^2)/16 + 
   (3*A1*bt0*G1*K1*LQm^2)/16 + (5*A1*G1^2*K1*LQm^2)/64 + 
   (A1*bt0*K1^2*LQm^2)/32 + (3*A1*G1*K1^2*LQm^2)/64 + (A1*K1^3*LQm^2)/192 - 
   (A1^2*K2*LQm^2)/32 + (A1^2*A2*LQm^3)/32 - (A1^2*bt0^2*LQm^3)/24 + 
   (A1^3*C1*LQm^3)/48 - (A1^2*bt0*G1*LQm^3)/8 - (3*A1^2*G1^2*LQm^3)/64 - 
   (A1^2*bt0*K1*LQm^3)/16 - (A1^2*G1*K1*LQm^3)/16 - (A1^2*K1^2*LQm^3)/64 + 
   (A1^3*bt0*LQm^4)/32 + (5*A1^3*G1*LQm^4)/192 + (A1^3*K1*LQm^4)/64 - 
   (A1^4*LQm^5)/192)/ep^3 + ((bt2*G1)/8 + (bt1*C1*G1)/6 + (bt0*C2*G1)/4 + 
   (C2*G1^2)/8 + (bt1*G2)/8 + (bt0*C1*G2)/6 + (C1*G1*G2)/8 + G2^2/32 + 
   (bt0*G3)/8 + (G1*G3)/12 + (bt2*K1)/8 + (bt1*C1*K1)/6 + (bt0*C2*K1)/4 + 
   (C2*G1*K1)/4 + (C1*G2*K1)/8 + (G3*K1)/12 + (C2*K1^2)/8 + (bt1*K2)/8 + 
   (bt0*C1*K2)/6 + (C1*G1*K2)/8 + (G2*K2)/16 + (C1*K1*K2)/8 + K2^2/32 + 
   (bt0*K3)/8 + (G1*K3)/12 + (K1*K3)/12 - (A3*bt0*LQm)/8 - (A2*bt1*LQm)/8 - 
   (A1*bt2*LQm)/8 - (A2*bt0*C1*LQm)/6 - (A1*bt1*C1*LQm)/6 - 
   (A1*bt0*C2*LQm)/4 - (A3*G1*LQm)/12 - (A2*C1*G1*LQm)/8 - (A1*C2*G1*LQm)/4 + 
   (bt1*G1^2*LQm)/12 + (bt0*C1*G1^2*LQm)/8 + (C1*G1^3*LQm)/16 - 
   (A2*G2*LQm)/16 - (A1*C1*G2*LQm)/8 + (5*bt0*G1*G2*LQm)/24 + 
   (G1^2*G2*LQm)/8 - (A1*G3*LQm)/12 - (A3*K1*LQm)/12 - (A2*C1*K1*LQm)/8 - 
   (A1*C2*K1*LQm)/4 + (bt1*G1*K1*LQm)/12 + (bt0*C1*G1*K1*LQm)/8 + 
   (C1*G1^2*K1*LQm)/8 + (bt0*G2*K1*LQm)/8 + (3*G1*G2*K1*LQm)/16 + 
   (C1*G1*K1^2*LQm)/16 + (G2*K1^2*LQm)/16 - (A2*K2*LQm)/16 - 
   (A1*C1*K2*LQm)/8 + (bt0*G1*K2*LQm)/12 + (G1^2*K2*LQm)/16 + 
   (G1*K1*K2*LQm)/16 - (A1*K3*LQm)/12 + (A2^2*LQm^2)/32 + (A1*A3*LQm^2)/12 + 
   (A1*A2*C1*LQm^2)/8 + (A1^2*C2*LQm^2)/8 - (7*A2*bt0*G1*LQm^2)/48 - 
   (A1*bt1*G1*LQm^2)/8 - (3*A1*bt0*C1*G1*LQm^2)/16 - (3*A2*G1^2*LQm^2)/32 - 
   (bt0^2*G1^2*LQm^2)/48 - (5*A1*C1*G1^2*LQm^2)/32 + (bt0*G1^3*LQm^2)/32 + 
   (G1^4*LQm^2)/48 - (A1*bt0*G2*LQm^2)/6 - (7*A1*G1*G2*LQm^2)/32 - 
   (A2*bt0*K1*LQm^2)/16 - (A1*bt1*K1*LQm^2)/24 - (A1*bt0*C1*K1*LQm^2)/16 - 
   (A2*G1*K1*LQm^2)/8 - (bt0^2*G1*K1*LQm^2)/48 - (3*A1*C1*G1*K1*LQm^2)/16 + 
   (bt0*G1^2*K1*LQm^2)/32 + (3*G1^3*K1*LQm^2)/64 - (5*A1*G2*K1*LQm^2)/32 - 
   (A2*K1^2*LQm^2)/32 - (A1*C1*K1^2*LQm^2)/32 + (G1^2*K1^2*LQm^2)/32 + 
   (G1*K1^3*LQm^2)/192 - (A1*bt0*K2*LQm^2)/24 - (3*A1*G1*K2*LQm^2)/32 - 
   (A1*K1*K2*LQm^2)/32 + (5*A1*A2*bt0*LQm^3)/48 + (A1^2*bt1*LQm^3)/24 + 
   (A1^2*bt0*C1*LQm^3)/16 + (5*A1*A2*G1*LQm^3)/32 + (A1*bt0^2*G1*LQm^3)/36 + 
   (A1^2*C1*G1*LQm^3)/8 - (A1*bt0*G1^2*LQm^3)/16 - (37*A1*G1^3*LQm^3)/576 + 
   (3*A1^2*G2*LQm^3)/32 + (3*A1*A2*K1*LQm^3)/32 + (A1*bt0^2*K1*LQm^3)/144 + 
   (A1^2*C1*K1*LQm^3)/16 - (A1*bt0*G1*K1*LQm^3)/32 - 
   (19*A1*G1^2*K1*LQm^3)/192 - (7*A1*G1*K1^2*LQm^3)/192 - 
   (A1*K1^3*LQm^3)/576 + (A1^2*K2*LQm^3)/32 - (A1^2*A2*LQm^4)/16 - 
   (A1^2*bt0^2*LQm^4)/144 - (A1^3*C1*LQm^4)/32 + (5*A1^2*bt0*G1*LQm^4)/128 + 
   (55*A1^2*G1^2*LQm^4)/768 + (A1^2*bt0*K1*LQm^4)/128 + 
   (25*A1^2*G1*K1*LQm^4)/384 + (7*A1^2*K1^2*LQm^4)/768 - 
   (A1^3*bt0*LQm^5)/128 - (13*A1^3*G1*LQm^5)/384 - (5*A1^3*K1*LQm^5)/384 + 
   (13*A1^4*LQm^6)/2304)/ep^2 + (-(C3*G1)/2 - (C2*G2)/4 - (C1*G3)/6 - G4/8 - 
   (C3*K1)/2 - (C2*K2)/4 - (C1*K3)/6 - K4/8 + (A4*LQm)/8 + (A3*C1*LQm)/6 + 
   (A2*C2*LQm)/4 + (A1*C3*LQm)/2 - (C2*G1^2*LQm)/4 - (3*C1*G1*G2*LQm)/8 - 
   (G2^2*LQm)/8 - (G1*G3*LQm)/3 - (C2*G1*K1*LQm)/4 - (C1*G2*K1*LQm)/4 - 
   (G3*K1*LQm)/4 - (C1*G1*K2*LQm)/8 - (G2*K2*LQm)/8 - (G1*K3*LQm)/12 + 
   (5*A3*G1*LQm^2)/24 + (A2*C1*G1*LQm^2)/4 + (3*A1*C2*G1*LQm^2)/8 + 
   (bt1*G1^2*LQm^2)/12 + (bt0*C1*G1^2*LQm^2)/16 - (3*C1*G1^3*LQm^2)/32 + 
   (3*A2*G2*LQm^2)/16 + (5*A1*C1*G2*LQm^2)/16 + (7*bt0*G1*G2*LQm^2)/48 - 
   (G1^2*G2*LQm^2)/4 + (7*A1*G3*LQm^2)/24 + (A3*K1*LQm^2)/8 + 
   (A2*C1*K1*LQm^2)/8 + (A1*C2*K1*LQm^2)/8 + (bt1*G1*K1*LQm^2)/12 + 
   (bt0*C1*G1*K1*LQm^2)/16 - (C1*G1^2*K1*LQm^2)/8 + (bt0*G2*K1*LQm^2)/8 - 
   (9*G1*G2*K1*LQm^2)/32 - (C1*G1*K1^2*LQm^2)/32 - (G2*K1^2*LQm^2)/16 + 
   (A2*K2*LQm^2)/16 + (A1*C1*K2*LQm^2)/16 + (bt0*G1*K2*LQm^2)/48 - 
   (G1^2*K2*LQm^2)/16 - (G1*K1*K2*LQm^2)/32 + (A1*K3*LQm^2)/24 - 
   (A2^2*LQm^3)/16 - (A1*A3*LQm^3)/6 - (3*A1*A2*C1*LQm^3)/16 - 
   (A1^2*C2*LQm^3)/8 - (A2*bt0*G1*LQm^3)/16 - (A1*bt1*G1*LQm^3)/9 - 
   (A1*bt0*C1*G1*LQm^3)/12 + (7*A2*G1^2*LQm^3)/48 - 
   (5*bt0^2*G1^2*LQm^3)/144 + (19*A1*C1*G1^2*LQm^3)/96 + 
   (5*bt0*G1^3*LQm^3)/96 - (G1^4*LQm^3)/36 - (19*A1*bt0*G2*LQm^3)/144 + 
   (37*A1*G1*G2*LQm^3)/96 - (A2*bt0*K1*LQm^3)/24 - (A1*bt1*K1*LQm^3)/36 - 
   (A1*bt0*C1*K1*LQm^3)/48 + (13*A2*G1*K1*LQm^3)/96 - 
   (5*bt0^2*G1*K1*LQm^3)/144 + (7*A1*C1*G1*K1*LQm^3)/48 + 
   (7*bt0*G1^2*K1*LQm^3)/96 - (3*G1^3*K1*LQm^3)/64 + (19*A1*G2*K1*LQm^3)/96 + 
   (A2*K1^2*LQm^3)/48 + (A1*C1*K1^2*LQm^3)/96 + (bt0*G1*K1^2*LQm^3)/48 - 
   (G1^2*K1^2*LQm^3)/48 - (G1*K1^3*LQm^3)/576 - (A1*bt0*K2*LQm^3)/144 + 
   (7*A1*G1*K2*LQm^3)/96 + (A1*K1*K2*LQm^3)/96 + (7*A1*A2*bt0*LQm^4)/144 + 
   (A1^2*bt1*LQm^4)/36 + (A1^2*bt0*C1*LQm^4)/48 - (5*A1*A2*G1*LQm^4)/24 + 
   (25*A1*bt0^2*G1*LQm^4)/576 - (25*A1^2*C1*G1*LQm^4)/192 - 
   (5*A1*bt0*G1^2*LQm^4)/48 + (175*A1*G1^3*LQm^4)/2304 - 
   (55*A1^2*G2*LQm^4)/384 - (A1*A2*K1*LQm^4)/12 + (5*A1*bt0^2*K1*LQm^4)/576 - 
   (7*A1^2*C1*K1*LQm^4)/192 - (5*A1*bt0*G1*K1*LQm^4)/64 + 
   (65*A1*G1^2*K1*LQm^4)/768 - (A1*bt0*K1^2*LQm^4)/192 + 
   (5*A1*G1*K1^2*LQm^4)/256 + (A1*K1^3*LQm^4)/2304 - (7*A1^2*K2*LQm^4)/384 + 
   (9*A1^2*A2*LQm^5)/128 - (5*A1^2*bt0^2*LQm^5)/576 + (5*A1^3*C1*LQm^5)/192 + 
   (A1^2*bt0*G1*LQm^5)/16 - (19*A1^2*G1^2*LQm^5)/256 + 
   (A1^2*bt0*K1*LQm^5)/64 - (3*A1^2*G1*K1*LQm^5)/64 - (A1^2*K1^2*LQm^5)/256 - 
   (A1^3*bt0*LQm^6)/96 + (35*A1^3*G1*LQm^6)/1152 + (A1^3*K1*LQm^6)/128 - 
   (5*A1^4*LQm^7)/1152)/ep + ep*(-(C3*G1*LQm^2)/4 - (C2*G2*LQm^2)/2 - 
   (3*C1*G3*LQm^2)/4 - G4*LQm^2 + (A4*LQm^3)/3 + (A3*C1*LQm^3)/4 + 
   (A2*C2*LQm^3)/6 + (A1*C3*LQm^3)/12 + (5*bt2*G1*LQm^3)/12 + 
   (bt1*C1*G1*LQm^3)/3 + (bt0*C2*G1*LQm^3)/4 - (C2*G1^2*LQm^3)/6 + 
   bt1*G2*LQm^3 + (5*bt0*C1*G2*LQm^3)/6 - (9*C1*G1*G2*LQm^3)/16 - 
   (G2^2*LQm^3)/3 + (7*bt0*G3*LQm^3)/4 - (8*G1*G3*LQm^3)/9 - 
   (C2*G1*K1*LQm^3)/24 - (C1*G2*K1*LQm^3)/6 - (3*G3*K1*LQm^3)/8 - 
   (C1*G1*K2*LQm^3)/48 - (G2*K2*LQm^3)/12 - (G1*K3*LQm^3)/72 - 
   (7*A3*bt0*LQm^4)/16 - (A2*bt1*LQm^4)/4 - (5*A1*bt2*LQm^4)/48 - 
   (5*A2*bt0*C1*LQm^4)/24 - (A1*bt1*C1*LQm^4)/12 - (A1*bt0*C2*LQm^4)/16 + 
   (85*A3*G1*LQm^4)/288 - (19*bt0*bt1*G1*LQm^4)/24 + (5*A2*C1*G1*LQm^4)/24 - 
   (bt0^2*C1*G1*LQm^4)/4 + (5*A1*C2*G1*LQm^4)/32 + (13*bt1*G1^2*LQm^4)/36 + 
   (49*bt0*C1*G1^2*LQm^4)/192 - (9*C1*G1^3*LQm^4)/128 + (5*A2*G2*LQm^4)/16 - 
   (9*bt0^2*G2*LQm^4)/8 + (65*A1*C1*G2*LQm^4)/192 + 
   (679*bt0*G1*G2*LQm^4)/576 - (G1^2*G2*LQm^4)/3 + (175*A1*G3*LQm^4)/288 + 
   (3*A3*K1*LQm^4)/32 + (A2*C1*K1*LQm^4)/24 + (A1*C2*K1*LQm^4)/96 + 
   (19*bt1*G1*K1*LQm^4)/144 + (13*bt0*C1*G1*K1*LQm^4)/192 - 
   (C1*G1^2*K1*LQm^4)/24 + (17*bt0*G2*K1*LQm^4)/48 - 
   (27*G1*G2*K1*LQm^4)/128 - (C1*G1*K1^2*LQm^4)/384 - (G2*K1^2*LQm^4)/48 + 
   (A2*K2*LQm^4)/48 + (A1*C1*K2*LQm^4)/192 + (19*bt0*G1*K2*LQm^4)/576 - 
   (G1^2*K2*LQm^4)/48 - (G1*K1*K2*LQm^4)/384 + (A1*K3*LQm^4)/288 - 
   (A2^2*LQm^5)/16 - (13*A1*A3*LQm^5)/72 + (9*A2*bt0^2*LQm^5)/40 + 
   (19*A1*bt0*bt1*LQm^5)/120 - (7*A1*A2*C1*LQm^5)/64 + 
   (A1*bt0^2*C1*LQm^5)/20 - (A1^2*C2*LQm^5)/32 - 
   (1019*A2*bt0*G1*LQm^5)/2880 + (bt0^3*G1*LQm^5)/4 - 
   (13*A1*bt1*G1*LQm^5)/40 - (13*A1*bt0*C1*G1*LQm^5)/60 + 
   (31*A2*G1^2*LQm^5)/240 - (917*bt0^2*G1^2*LQm^5)/2880 + 
   (211*A1*C1*G1^2*LQm^5)/1920 + (269*bt0*G1^3*LQm^5)/1920 - 
   (G1^4*LQm^5)/45 - (1969*A1*bt0*G2*LQm^5)/2880 + 
   (781*A1*G1*G2*LQm^5)/1920 - (17*A2*bt0*K1*LQm^5)/240 - 
   (19*A1*bt1*K1*LQm^5)/720 - (13*A1*bt0*C1*K1*LQm^5)/960 + 
   (121*A2*G1*K1*LQm^5)/1920 - (257*bt0^2*G1*K1*LQm^5)/2880 + 
   (31*A1*C1*G1*K1*LQm^5)/960 + (163*bt0*G1^2*K1*LQm^5)/1920 - 
   (27*G1^3*K1*LQm^5)/1280 + (211*A1*G2*K1*LQm^5)/1920 + 
   (A2*K1^2*LQm^5)/240 + (A1*C1*K1^2*LQm^5)/1920 + 
   (7*bt0*G1*K1^2*LQm^5)/960 - (G1^2*K1^2*LQm^5)/240 - 
   (G1*K1^3*LQm^5)/11520 - (19*A1*bt0*K2*LQm^5)/2880 + 
   (31*A1*G1*K2*LQm^5)/1920 + (A1*K1*K2*LQm^5)/1920 + 
   (83*A1*A2*bt0*LQm^6)/480 - (A1*bt0^3*LQm^6)/24 + (13*A1^2*bt1*LQm^6)/240 + 
   (13*A1^2*bt0*C1*LQm^6)/360 - (413*A1*A2*G1*LQm^6)/2880 + 
   (4361*A1*bt0^2*G1*LQm^6)/17280 - (301*A1^2*C1*G1*LQm^6)/5760 - 
   (119*A1*bt0*G1^2*LQm^6)/576 + (3367*A1*G1^3*LQm^6)/69120 - 
   (1351*A1^2*G2*LQm^6)/11520 - (83*A1*A2*K1*LQm^6)/2880 + 
   (257*A1*bt0^2*K1*LQm^6)/17280 - (31*A1^2*C1*K1*LQm^6)/5760 - 
   (119*A1*bt0*G1*K1*LQm^6)/1920 + (133*A1*G1^2*K1*LQm^6)/4608 - 
   (7*A1*bt0*K1^2*LQm^6)/5760 + (7*A1*G1*K1^2*LQm^6)/2560 + 
   (A1*K1^3*LQm^6)/69120 - (31*A1^2*K2*LQm^6)/11520 + 
   (143*A1^2*A2*LQm^7)/3840 - (623*A1^2*bt0^2*LQm^7)/17280 + 
   (43*A1^3*C1*LQm^7)/5760 + (29*A1^2*bt0*G1*LQm^7)/320 - 
   (289*A1^2*G1^2*LQm^7)/7680 + (17*A1^2*bt0*K1*LQm^7)/1920 - 
   (23*A1^2*G1*K1*LQm^7)/1920 - (A1^2*K1^2*LQm^7)/2560 - 
   (29*A1^3*bt0*LQm^8)/2560 + (37*A1^3*G1*LQm^8)/3072 + 
   (23*A1^3*K1*LQm^8)/15360 - (37*A1^4*LQm^9)/27648) );

F1mv4lres = Collect[Expand[Normal[Series[F1mv4l /. subs1 /. subs2 /. subs3 /. subs4, {ep, 0, -2}]]], {ep, nc, nl, nfv}];

(*****************************************)
(* Massless: bare quark FF               *)
(* See Eq. (3.5) & (4.7) of paper        *)
(*****************************************)

Fqml1l = ( -A1/(2*ep^2) - G10/(2*ep) - G11/2 - (ep*G12)/2 - (ep^2*G13)/2 - 
 (ep^3*G14)/2 - (ep^4*G15)/2 - (ep^5*G16)/2 - (ep^6*G17)/2 );
Fqml1lres = Collect[Expand[Normal[Series[Fqml1l /. subs2 /. subs3 /. subs4, {ep, 0, 6}]]], {ep, nc, nl, nfv}]; 

Fqml2l = ( A1^2/(8*ep^4) + (-(A1*bt0)/8 + (A1*G10)/4)/ep^3 + 
 (-A2 - 2*bt0*G10 + G10^2 + 2*A1*G11)/(8*ep^2) + 
 (-(bt0*G11) + G10*G11 + A1*G12 - G20)/(4*ep) + 
 (G11^2 - 2*bt0*G12 + 2*G10*G12 + 2*A1*G13 - 2*G21)/8 + 
 (ep*(G11*G12 - bt0*G13 + G10*G13 + A1*G14 - G22))/4 + 
 (ep^2*(G12^2 + 2*G11*G13 - 2*bt0*G14 + 2*G10*G14 + 2*A1*G15 - 2*G23))/8 + 
 (ep^3*(G12*G13 + G11*G14 - bt0*G15 + G10*G15 + A1*G16 - G24))/4 + 
 (ep^4*(G13^2 + 2*G12*G14 + 2*G11*G15 - 2*bt0*G16 + 2*G10*G16 + 2*A1*G17 - 
    2*G25))/8 );
Fqml2lres = Collect[Expand[Normal[Series[Fqml2l /. subs2 /. subs3 /. subs4, {ep, 0, 4}]]], {ep, nc, nl, nfv}]; 

Fqml3l = ( -A1^3/(48*ep^6) + (A1^2*bt0 - A1^2*G10)/(16*ep^5) + 
 (9*A1*A2 - 8*A1*bt0^2 + 27*A1*bt0*G10 - 9*A1*G10^2 - 9*A1^2*G11)/
  (144*ep^4) + (-16*A2*bt0 - 4*A1*bt1 + 9*A2*G10 - 24*bt0^2*G10 + 
   18*bt0*G10^2 - 3*G10^3 + 27*A1*bt0*G11 - 18*A1*G10*G11 - 9*A1^2*G12 + 
   18*A1*G20)/(144*ep^3) + (-8*A3 - 12*bt1*G10 + 9*A2*G11 - 24*bt0^2*G11 + 
   36*bt0*G10*G11 - 9*G10^2*G11 - 9*A1*G11^2 + 27*A1*bt0*G12 - 
   18*A1*G10*G12 - 9*A1^2*G13 - 48*bt0*G20 + 18*G10*G20 + 18*A1*G21)/
  (144*ep^2) + (-4*bt1*G11 + 6*bt0*G11^2 - 3*G10*G11^2 + 3*A2*G12 - 
   8*bt0^2*G12 + 12*bt0*G10*G12 - 3*G10^2*G12 - 6*A1*G11*G12 + 9*A1*bt0*G13 - 
   6*A1*G10*G13 - 3*A1^2*G14 + 6*G11*G20 - 16*bt0*G21 + 6*G10*G21 + 
   6*A1*G22 - 8*G30)/(48*ep) + (-G11^3 - 4*bt1*G12 + 12*bt0*G11*G12 - 
   6*G10*G11*G12 - 3*A1*G12^2 + 3*A2*G13 - 8*bt0^2*G13 + 12*bt0*G10*G13 - 
   3*G10^2*G13 - 6*A1*G11*G13 + 9*A1*bt0*G14 - 6*A1*G10*G14 - 3*A1^2*G15 + 
   6*G12*G20 + 6*G11*G21 - 16*bt0*G22 + 6*G10*G22 + 6*A1*G23 - 8*G31)/48 + 
 (ep*(-3*G11^2*G12 + 6*bt0*G12^2 - 3*G10*G12^2 - 4*bt1*G13 + 12*bt0*G11*G13 - 
    6*G10*G11*G13 - 6*A1*G12*G13 + 3*A2*G14 - 8*bt0^2*G14 + 12*bt0*G10*G14 - 
    3*G10^2*G14 - 6*A1*G11*G14 + 9*A1*bt0*G15 - 6*A1*G10*G15 - 3*A1^2*G16 + 
    6*G13*G20 + 6*G12*G21 + 6*G11*G22 - 16*bt0*G23 + 6*G10*G23 + 6*A1*G24 - 
    8*G32))/48 + (ep^2*(-3*G11*G12^2 - 3*G11^2*G13 + 12*bt0*G12*G13 - 
    6*G10*G12*G13 - 3*A1*G13^2 - 4*bt1*G14 + 12*bt0*G11*G14 - 6*G10*G11*G14 - 
    6*A1*G12*G14 + 3*A2*G15 - 8*bt0^2*G15 + 12*bt0*G10*G15 - 3*G10^2*G15 - 
    6*A1*G11*G15 + 9*A1*bt0*G16 - 6*A1*G10*G16 - 3*A1^2*G17 + 6*G14*G20 + 
    6*G13*G21 + 6*G12*G22 + 6*G11*G23 - 16*bt0*G24 + 6*G10*G24 + 6*A1*G25 - 
    8*G33))/48 );
Fqml3lres = Collect[Expand[Normal[Series[Fqml3l /. subs2 /. subs3 /. subs4, {ep, 0, 2}]]], {ep, nc, nl, nfv}]; 

Fqml4l = ( A1^4/(384*ep^8) + (-(A1^3*bt0)/64 + (A1^3*G10)/96)/ep^7 + 
 (-18*A1^2*A2 + 41*A1^2*bt0^2 - 72*A1^2*bt0*G10 + 18*A1^2*G10^2 + 
   12*A1^3*G11)/(1152*ep^6) + (41*A1*A2*bt0 - 18*A1*bt0^3 + 8*A1^2*bt1 - 
   18*A1*A2*G10 + 82*A1*bt0^2*G10 - 45*A1*bt0*G10^2 + 6*A1*G10^3 - 
   36*A1^2*bt0*G11 + 18*A1^2*G10*G11 + 6*A1^3*G12 - 18*A1^2*G20)/(576*ep^5) + 
 (9*A2^2 + 32*A1*A3 - 108*A2*bt0^2 - 48*A1*bt0*bt1 + 100*A2*bt0*G10 - 
   144*bt0^3*G10 + 64*A1*bt1*G10 - 18*A2*G10^2 + 132*bt0^2*G10^2 - 
   36*bt0*G10^3 + 3*G10^4 - 36*A1*A2*G11 + 164*A1*bt0^2*G11 - 
   180*A1*bt0*G10*G11 + 36*A1*G10^2*G11 + 18*A1^2*G11^2 - 72*A1^2*bt0*G12 + 
   36*A1^2*G10*G12 + 12*A1^3*G13 + 228*A1*bt0*G20 - 72*A1*G10*G20 - 
   36*A1^2*G21)/(1152*ep^4) + (-54*A3*bt0 - 18*A2*bt1 - 6*A1*bt2 + 
   16*A3*G10 - 96*bt0*bt1*G10 + 24*bt1*G10^2 + 50*A2*bt0*G11 - 72*bt0^3*G11 + 
   32*A1*bt1*G11 - 18*A2*G10*G11 + 132*bt0^2*G10*G11 - 54*bt0*G10^2*G11 + 
   6*G10^3*G11 - 45*A1*bt0*G11^2 + 18*A1*G10*G11^2 - 18*A1*A2*G12 + 
   82*A1*bt0^2*G12 - 90*A1*bt0*G10*G12 + 18*A1*G10^2*G12 + 18*A1^2*G11*G12 - 
   36*A1^2*bt0*G13 + 18*A1^2*G10*G13 + 6*A1^3*G14 + 18*A2*G20 - 
   216*bt0^2*G20 + 132*bt0*G10*G20 - 18*G10^2*G20 - 36*A1*G11*G20 + 
   114*A1*bt0*G21 - 36*A1*G10*G21 - 18*A1^2*G22 + 48*A1*G30)/(576*ep^3) + 
 (-18*A4 - 24*bt2*G10 + 16*A3*G11 - 96*bt0*bt1*G11 + 48*bt1*G10*G11 - 
   9*A2*G11^2 + 66*bt0^2*G11^2 - 54*bt0*G10*G11^2 + 9*G10^2*G11^2 + 
   6*A1*G11^3 + 50*A2*bt0*G12 - 72*bt0^3*G12 + 32*A1*bt1*G12 - 
   18*A2*G10*G12 + 132*bt0^2*G10*G12 - 54*bt0*G10^2*G12 + 6*G10^3*G12 - 
   90*A1*bt0*G11*G12 + 36*A1*G10*G11*G12 + 9*A1^2*G12^2 - 18*A1*A2*G13 + 
   82*A1*bt0^2*G13 - 90*A1*bt0*G10*G13 + 18*A1*G10^2*G13 + 18*A1^2*G11*G13 - 
   36*A1^2*bt0*G14 + 18*A1^2*G10*G14 + 6*A1^3*G15 - 72*bt1*G20 + 
   132*bt0*G11*G20 - 36*G10*G11*G20 - 36*A1*G12*G20 + 18*G20^2 + 18*A2*G21 - 
   216*bt0^2*G21 + 132*bt0*G10*G21 - 18*G10^2*G21 - 36*A1*G11*G21 + 
   114*A1*bt0*G22 - 36*A1*G10*G22 - 18*A1^2*G23 - 216*bt0*G30 + 48*G10*G30 + 
   48*A1*G31)/(576*ep^2) + (-24*bt2*G11 + 24*bt1*G11^2 - 18*bt0*G11^3 + 
   6*G10*G11^3 + 16*A3*G12 - 96*bt0*bt1*G12 + 48*bt1*G10*G12 - 
   18*A2*G11*G12 + 132*bt0^2*G11*G12 - 108*bt0*G10*G11*G12 + 
   18*G10^2*G11*G12 + 18*A1*G11^2*G12 - 45*A1*bt0*G12^2 + 18*A1*G10*G12^2 + 
   50*A2*bt0*G13 - 72*bt0^3*G13 + 32*A1*bt1*G13 - 18*A2*G10*G13 + 
   132*bt0^2*G10*G13 - 54*bt0*G10^2*G13 + 6*G10^3*G13 - 90*A1*bt0*G11*G13 + 
   36*A1*G10*G11*G13 + 18*A1^2*G12*G13 - 18*A1*A2*G14 + 82*A1*bt0^2*G14 - 
   90*A1*bt0*G10*G14 + 18*A1*G10^2*G14 + 18*A1^2*G11*G14 - 36*A1^2*bt0*G15 + 
   18*A1^2*G10*G15 + 6*A1^3*G16 - 18*G11^2*G20 + 132*bt0*G12*G20 - 
   36*G10*G12*G20 - 36*A1*G13*G20 - 72*bt1*G21 + 132*bt0*G11*G21 - 
   36*G10*G11*G21 - 36*A1*G12*G21 + 36*G20*G21 + 18*A2*G22 - 216*bt0^2*G22 + 
   132*bt0*G10*G22 - 18*G10^2*G22 - 36*A1*G11*G22 + 114*A1*bt0*G23 - 
   36*A1*G10*G23 - 18*A1^2*G24 + 48*G11*G30 - 216*bt0*G31 + 48*G10*G31 + 
   48*A1*G32 - 72*G40)/(576*ep) + (3*G11^4 - 48*bt2*G12 + 96*bt1*G11*G12 - 
   108*bt0*G11^2*G12 + 36*G10*G11^2*G12 - 18*A2*G12^2 + 132*bt0^2*G12^2 - 
   108*bt0*G10*G12^2 + 18*G10^2*G12^2 + 36*A1*G11*G12^2 + 32*A3*G13 - 
   192*bt0*bt1*G13 + 96*bt1*G10*G13 - 36*A2*G11*G13 + 264*bt0^2*G11*G13 - 
   216*bt0*G10*G11*G13 + 36*G10^2*G11*G13 + 36*A1*G11^2*G13 - 
   180*A1*bt0*G12*G13 + 72*A1*G10*G12*G13 + 18*A1^2*G13^2 + 100*A2*bt0*G14 - 
   144*bt0^3*G14 + 64*A1*bt1*G14 - 36*A2*G10*G14 + 264*bt0^2*G10*G14 - 
   108*bt0*G10^2*G14 + 12*G10^3*G14 - 180*A1*bt0*G11*G14 + 
   72*A1*G10*G11*G14 + 36*A1^2*G12*G14 - 36*A1*A2*G15 + 164*A1*bt0^2*G15 - 
   180*A1*bt0*G10*G15 + 36*A1*G10^2*G15 + 36*A1^2*G11*G15 - 72*A1^2*bt0*G16 + 
   36*A1^2*G10*G16 + 12*A1^3*G17 - 72*G11*G12*G20 + 264*bt0*G13*G20 - 
   72*G10*G13*G20 - 72*A1*G14*G20 - 36*G11^2*G21 + 264*bt0*G12*G21 - 
   72*G10*G12*G21 - 72*A1*G13*G21 + 36*G21^2 - 144*bt1*G22 + 
   264*bt0*G11*G22 - 72*G10*G11*G22 - 72*A1*G12*G22 + 72*G20*G22 + 
   36*A2*G23 - 432*bt0^2*G23 + 264*bt0*G10*G23 - 36*G10^2*G23 - 
   72*A1*G11*G23 + 228*A1*bt0*G24 - 72*A1*G10*G24 - 36*A1^2*G25 + 
   96*G12*G30 + 96*G11*G31 - 432*bt0*G32 + 96*G10*G32 + 96*A1*G33 - 144*G41)/
  1152 );
Fqml4lres = Collect[Expand[Normal[Series[Fqml4l /. subs2 /. subs3 /. subs4, {ep, 0, 0}]]], {ep, nc, nl, nfv}]; 

Fqml5l = ( -A1^5/(3840*ep^10) + ((A1^4*bt0)/384 - (A1^4*G10)/768)/ep^9 - G11^5/3840 + 
 (6*A1^3*A2 - 25*A1^3*bt0^2 + 30*A1^3*bt0*G10 - 6*A1^3*G10^2 - 3*A1^4*G11)/
  (2304*ep^8) - (bt3*G12)/40 + (bt2*G11*G12)/24 - (bt1*G11^2*G12)/32 + 
 (bt0*G11^3*G12)/48 - (G10*G11^3*G12)/192 - (A3*G12^2)/144 + 
 (5*bt0*bt1*G12^2)/48 - (bt1*G10*G12^2)/32 + (A2*G11*G12^2)/128 - 
 (7*bt0^2*G11*G12^2)/64 + (bt0*G10*G11*G12^2)/16 - (G10^2*G11*G12^2)/128 - 
 (A1*G11^2*G12^2)/128 + (7*A1*bt0*G12^3)/384 - (A1*G10*G12^3)/192 + 
 (A4*G13)/64 - (3*bt1^2*G13)/80 - (7*bt0*bt2*G13)/60 + (bt2*G10*G13)/24 - 
 (A3*G11*G13)/72 + (5*bt0*bt1*G11*G13)/24 - (bt1*G10*G11*G13)/16 + 
 (A2*G11^2*G13)/128 - (7*bt0^2*G11^2*G13)/64 + (bt0*G10*G11^2*G13)/16 - 
 (G10^2*G11^2*G13)/128 - (A1*G11^3*G13)/192 - (17*A2*bt0*G12*G13)/288 + 
 (5*bt0^3*G12*G13)/24 - (7*A1*bt1*G12*G13)/144 + (A2*G10*G12*G13)/64 - 
 (7*bt0^2*G10*G12*G13)/32 + (bt0*G10^2*G12*G13)/16 - (G10^3*G12*G13)/192 + 
 (7*A1*bt0*G11*G12*G13)/64 - (A1*G10*G11*G12*G13)/32 - (A1^2*G12^2*G13)/128 + 
 (A1*A2*G13^2)/128 - (23*A1*bt0^2*G13^2)/288 + (7*A1*bt0*G10*G13^2)/128 - 
 (A1*G10^2*G13^2)/128 - (A1^2*G11*G13^2)/128 + (35*A3*bt0*G14)/576 + 
 (5*A2*bt1*G14)/192 - (29*bt0^2*bt1*G14)/120 + (5*A1*bt2*G14)/192 - 
 (A3*G10*G14)/72 + (5*bt0*bt1*G10*G14)/24 - (bt1*G10^2*G14)/32 - 
 (17*A2*bt0*G11*G14)/288 + (5*bt0^3*G11*G14)/24 - (7*A1*bt1*G11*G14)/144 + 
 (A2*G10*G11*G14)/64 - (7*bt0^2*G10*G11*G14)/32 + (bt0*G10^2*G11*G14)/16 - 
 (G10^3*G11*G14)/192 + (7*A1*bt0*G11^2*G14)/128 - (A1*G10*G11^2*G14)/64 + 
 (A1*A2*G12*G14)/64 - (23*A1*bt0^2*G12*G14)/144 + (7*A1*bt0*G10*G12*G14)/64 - 
 (A1*G10^2*G12*G14)/64 - (A1^2*G11*G12*G14)/64 + (3*A1^2*bt0*G13*G14)/64 - 
 (A1^2*G10*G13*G14)/64 - (A1^3*G14^2)/384 - (A2^2*G15)/256 - (A1*A3*G15)/72 + 
 (55*A2*bt0^2*G15)/576 - (bt0^4*G15)/10 + (35*A1*bt0*bt1*G15)/288 - 
 (17*A2*bt0*G10*G15)/288 + (5*bt0^3*G10*G15)/24 - (7*A1*bt1*G10*G15)/144 + 
 (A2*G10^2*G15)/128 - (7*bt0^2*G10^2*G15)/64 + (bt0*G10^3*G15)/48 - 
 (G10^4*G15)/768 + (A1*A2*G11*G15)/64 - (23*A1*bt0^2*G11*G15)/144 + 
 (7*A1*bt0*G10*G11*G15)/64 - (A1*G10^2*G11*G15)/64 - (A1^2*G11^2*G15)/128 + 
 (3*A1^2*bt0*G12*G15)/64 - (A1^2*G10*G12*G15)/64 - (A1^3*G13*G15)/192 - 
 (59*A1*A2*bt0*G16)/1152 + (65*A1*bt0^3*G16)/576 - (5*A1^2*bt1*G16)/288 + 
 (A1*A2*G10*G16)/64 - (23*A1*bt0^2*G10*G16)/144 + (7*A1*bt0*G10^2*G16)/128 - 
 (A1*G10^3*G16)/192 + (3*A1^2*bt0*G11*G16)/64 - (A1^2*G10*G11*G16)/64 - 
 (A1^3*G12*G16)/192 + (A1^2*A2*G17)/128 - (125*A1^2*bt0^2*G17)/2304 + 
 (3*A1^2*bt0*G10*G17)/64 - (A1^2*G10^2*G17)/128 - (A1^3*G11*G17)/192 + 
 (5*A1^3*bt0*G18)/384 - (A1^3*G10*G18)/192 - (A1^4*G19)/768 + 
 (G11^2*G12*G20)/64 - (7*bt0*G12^2*G20)/96 + (G10*G12^2*G20)/64 + 
 (bt1*G13*G20)/12 - (7*bt0*G11*G13*G20)/48 + (G10*G11*G13*G20)/32 + 
 (A1*G12*G13*G20)/32 - (A2*G14*G20)/64 + (5*bt0^2*G14*G20)/16 - 
 (7*bt0*G10*G14*G20)/48 + (G10^2*G14*G20)/64 + (A1*G11*G14*G20)/32 - 
 (25*A1*bt0*G15*G20)/192 + (A1*G10*G15*G20)/32 + (A1^2*G16*G20)/64 - 
 (G13*G20^2)/64 + (-50*A1^2*A2*bt0 + 52*A1^2*bt0^3 - 8*A1^3*bt1 + 
   18*A1^2*A2*G10 - 125*A1^2*bt0^2*G10 + 54*A1^2*bt0*G10^2 - 6*A1^2*G10^3 + 
   30*A1^3*bt0*G11 - 12*A1^3*G10*G11 - 3*A1^4*G12 + 12*A1^3*G20)/
  (2304*ep^7) + (G11^3*G21)/192 + (bt1*G12*G21)/12 - (7*bt0*G11*G12*G21)/48 + 
 (G10*G11*G12*G21)/32 + (A1*G12^2*G21)/64 - (A2*G13*G21)/64 + 
 (5*bt0^2*G13*G21)/16 - (7*bt0*G10*G13*G21)/48 + (G10^2*G13*G21)/64 + 
 (A1*G11*G13*G21)/32 - (25*A1*bt0*G14*G21)/192 + (A1*G10*G14*G21)/32 + 
 (A1^2*G15*G21)/64 - (G12*G20*G21)/32 - (G11*G21^2)/64 + 
 (-(A1*A2^2)/256 - (A1^2*A3)/144 + (13*A1*A2*bt0^2)/192 - (A1*bt0^4)/50 + 
   (7*A1^2*bt0*bt1)/288 - (59*A1*A2*bt0*G10)/1152 + (65*A1*bt0^3*G10)/576 - 
   (5*A1^2*bt1*G10)/288 + (A1*A2*G10^2)/128 - (23*A1*bt0^2*G10^2)/288 + 
   (7*A1*bt0*G10^3)/384 - (A1*G10^4)/768 + (A1^2*A2*G11)/128 - 
   (125*A1^2*bt0^2*G11)/2304 + (3*A1^2*bt0*G10*G11)/64 - 
   (A1^2*G10^2*G11)/128 - (A1^3*G11^2)/384 + (5*A1^3*bt0*G12)/384 - 
   (A1^3*G10*G12)/192 - (A1^4*G13)/768 - (11*A1^2*bt0*G20)/192 + 
   (A1^2*G10*G20)/64 + (A1^3*G21)/192)/ep^6 - (bt2*G22)/15 + 
 (bt1*G11*G22)/12 - (7*bt0*G11^2*G22)/96 + (G10*G11^2*G22)/64 - 
 (A2*G12*G22)/64 + (5*bt0^2*G12*G22)/16 - (7*bt0*G10*G12*G22)/48 + 
 (G10^2*G12*G22)/64 + (A1*G11*G12*G22)/32 - (25*A1*bt0*G13*G22)/192 + 
 (A1*G10*G13*G22)/32 + (A1^2*G14*G22)/64 - (G11*G20*G22)/32 + 
 (bt0*G21*G22)/6 - (G10*G21*G22)/32 - (A1*G22^2)/64 + (A3*G23)/72 - 
 (11*bt0*bt1*G23)/30 + (bt1*G10*G23)/12 - (A2*G11*G23)/64 + 
 (5*bt0^2*G11*G23)/16 - (7*bt0*G10*G11*G23)/48 + (G10^2*G11*G23)/64 + 
 (A1*G11^2*G23)/64 - (25*A1*bt0*G12*G23)/192 + (A1*G10*G12*G23)/32 + 
 (A1^2*G13*G23)/64 + (bt0*G20*G23)/6 - (G10*G20*G23)/32 - (A1*G21*G23)/32 + 
 (5*A2*bt0*G24)/72 - (2*bt0^3*G24)/5 + (5*A1*bt1*G24)/72 - (A2*G10*G24)/64 + 
 (5*bt0^2*G10*G24)/16 - (7*bt0*G10^2*G24)/96 + (G10^3*G24)/192 - 
 (25*A1*bt0*G11*G24)/192 + (A1*G10*G11*G24)/32 + (A1^2*G12*G24)/64 - 
 (A1*G20*G24)/32 - (A1*A2*G25)/64 + (35*A1*bt0^2*G25)/144 - 
 (25*A1*bt0*G10*G25)/192 + (A1*G10^2*G25)/64 + (A1^2*G11*G25)/64 - 
 (11*A1^2*bt0*G26)/192 + (A1^2*G10*G26)/64 + (A1^3*G27)/192 - 
 (G11*G12*G30)/24 + (11*bt0*G13*G30)/48 - (G10*G13*G30)/24 - 
 (A1*G14*G30)/24 + (G22*G30)/24 + 
 ((A2^2*bt0)/72 + (31*A1*A3*bt0)/576 - (2*A2*bt0^3)/25 + (11*A1*A2*bt1)/576 - 
   (29*A1*bt0^2*bt1)/600 + (A1^2*bt2)/192 - (A2^2*G10)/256 - (A1*A3*G10)/72 + 
   (55*A2*bt0^2*G10)/576 - (bt0^4*G10)/10 + (35*A1*bt0*bt1*G10)/288 - 
   (17*A2*bt0*G10^2)/576 + (5*bt0^3*G10^2)/48 - (7*A1*bt1*G10^2)/288 + 
   (A2*G10^3)/384 - (7*bt0^2*G10^3)/192 + (bt0*G10^4)/192 - G10^5/3840 - 
   (59*A1*A2*bt0*G11)/1152 + (65*A1*bt0^3*G11)/576 - (5*A1^2*bt1*G11)/288 + 
   (A1*A2*G10*G11)/64 - (23*A1*bt0^2*G10*G11)/144 + 
   (7*A1*bt0*G10^2*G11)/128 - (A1*G10^3*G11)/192 + (3*A1^2*bt0*G11^2)/128 - 
   (A1^2*G10*G11^2)/128 + (A1^2*A2*G12)/128 - (125*A1^2*bt0^2*G12)/2304 + 
   (3*A1^2*bt0*G10*G12)/64 - (A1^2*G10^2*G12)/128 - (A1^3*G11*G12)/192 + 
   (5*A1^3*bt0*G13)/384 - (A1^3*G10*G13)/192 - (A1^4*G14)/768 - 
   (A1*A2*G20)/64 + (35*A1*bt0^2*G20)/144 - (25*A1*bt0*G10*G20)/192 + 
   (A1*G10^2*G20)/64 + (A1^2*G11*G20)/64 - (11*A1^2*bt0*G21)/192 + 
   (A1^2*G10*G21)/64 + (A1^3*G22)/192 - (A1^2*G30)/48)/ep^5 - 
 (G11^2*G31)/48 + (11*bt0*G12*G31)/48 - (G10*G12*G31)/24 - (A1*G13*G31)/24 + 
 (G21*G31)/24 + ((A2*A3)/144 + (A1*A4)/64 - (3*A3*bt0^2)/25 - 
   (11*A2*bt0*bt1)/150 - (3*A1*bt1^2)/400 - (7*A1*bt0*bt2)/300 + 
   (35*A3*bt0*G10)/576 + (5*A2*bt1*G10)/192 - (29*bt0^2*bt1*G10)/120 + 
   (5*A1*bt2*G10)/192 - (A3*G10^2)/144 + (5*bt0*bt1*G10^2)/48 - 
   (bt1*G10^3)/96 - (A2^2*G11)/256 - (A1*A3*G11)/72 + (55*A2*bt0^2*G11)/576 - 
   (bt0^4*G11)/10 + (35*A1*bt0*bt1*G11)/288 - (17*A2*bt0*G10*G11)/288 + 
   (5*bt0^3*G10*G11)/24 - (7*A1*bt1*G10*G11)/144 + (A2*G10^2*G11)/128 - 
   (7*bt0^2*G10^2*G11)/64 + (bt0*G10^3*G11)/48 - (G10^4*G11)/768 + 
   (A1*A2*G11^2)/128 - (23*A1*bt0^2*G11^2)/288 + (7*A1*bt0*G10*G11^2)/128 - 
   (A1*G10^2*G11^2)/128 - (A1^2*G11^3)/384 - (59*A1*A2*bt0*G12)/1152 + 
   (65*A1*bt0^3*G12)/576 - (5*A1^2*bt1*G12)/288 + (A1*A2*G10*G12)/64 - 
   (23*A1*bt0^2*G10*G12)/144 + (7*A1*bt0*G10^2*G12)/128 - 
   (A1*G10^3*G12)/192 + (3*A1^2*bt0*G11*G12)/64 - (A1^2*G10*G11*G12)/64 - 
   (A1^3*G12^2)/384 + (A1^2*A2*G13)/128 - (125*A1^2*bt0^2*G13)/2304 + 
   (3*A1^2*bt0*G10*G13)/64 - (A1^2*G10^2*G13)/128 - (A1^3*G11*G13)/192 + 
   (5*A1^3*bt0*G14)/384 - (A1^3*G10*G14)/192 - (A1^4*G15)/768 + 
   (5*A2*bt0*G20)/72 - (2*bt0^3*G20)/5 + (5*A1*bt1*G20)/72 - 
   (A2*G10*G20)/64 + (5*bt0^2*G10*G20)/16 - (7*bt0*G10^2*G20)/96 + 
   (G10^3*G20)/192 - (25*A1*bt0*G11*G20)/192 + (A1*G10*G11*G20)/32 + 
   (A1^2*G12*G20)/64 - (A1*G20^2)/64 - (A1*A2*G21)/64 + 
   (35*A1*bt0^2*G21)/144 - (25*A1*bt0*G10*G21)/192 + (A1*G10^2*G21)/64 + 
   (A1^2*G11*G21)/64 - (11*A1^2*bt0*G22)/192 + (A1^2*G10*G22)/64 + 
   (A1^3*G23)/192 + (5*A1*bt0*G30)/24 - (A1*G10*G30)/24 - (A1^2*G31)/48)/
  ep^4 - (3*bt1*G32)/20 + (11*bt0*G11*G32)/48 - (G10*G11*G32)/24 - 
 (A1*G12*G32)/24 + (G20*G32)/24 + (A2*G33)/48 - (3*bt0^2*G33)/5 + 
 (11*bt0*G10*G33)/48 - (G10^2*G33)/48 - (A1*G11*G33)/24 + (5*A1*bt0*G34)/24 - 
 (A1*G10*G34)/24 - (A1^2*G35)/48 + (G12*G40)/16 + 
 ((-2*A4*bt0)/25 - (3*A3*bt1)/100 - (A2*bt2)/75 - (A1*bt3)/200 + 
   (A4*G10)/64 - (3*bt1^2*G10)/80 - (7*bt0*bt2*G10)/60 + (bt2*G10^2)/48 + 
   (35*A3*bt0*G11)/576 + (5*A2*bt1*G11)/192 - (29*bt0^2*bt1*G11)/120 + 
   (5*A1*bt2*G11)/192 - (A3*G10*G11)/72 + (5*bt0*bt1*G10*G11)/24 - 
   (bt1*G10^2*G11)/32 - (17*A2*bt0*G11^2)/576 + (5*bt0^3*G11^2)/48 - 
   (7*A1*bt1*G11^2)/288 + (A2*G10*G11^2)/128 - (7*bt0^2*G10*G11^2)/64 + 
   (bt0*G10^2*G11^2)/32 - (G10^3*G11^2)/384 + (7*A1*bt0*G11^3)/384 - 
   (A1*G10*G11^3)/192 - (A2^2*G12)/256 - (A1*A3*G12)/72 + 
   (55*A2*bt0^2*G12)/576 - (bt0^4*G12)/10 + (35*A1*bt0*bt1*G12)/288 - 
   (17*A2*bt0*G10*G12)/288 + (5*bt0^3*G10*G12)/24 - (7*A1*bt1*G10*G12)/144 + 
   (A2*G10^2*G12)/128 - (7*bt0^2*G10^2*G12)/64 + (bt0*G10^3*G12)/48 - 
   (G10^4*G12)/768 + (A1*A2*G11*G12)/64 - (23*A1*bt0^2*G11*G12)/144 + 
   (7*A1*bt0*G10*G11*G12)/64 - (A1*G10^2*G11*G12)/64 - (A1^2*G11^2*G12)/128 + 
   (3*A1^2*bt0*G12^2)/128 - (A1^2*G10*G12^2)/128 - (59*A1*A2*bt0*G13)/1152 + 
   (65*A1*bt0^3*G13)/576 - (5*A1^2*bt1*G13)/288 + (A1*A2*G10*G13)/64 - 
   (23*A1*bt0^2*G10*G13)/144 + (7*A1*bt0*G10^2*G13)/128 - 
   (A1*G10^3*G13)/192 + (3*A1^2*bt0*G11*G13)/64 - (A1^2*G10*G11*G13)/64 - 
   (A1^3*G12*G13)/192 + (A1^2*A2*G14)/128 - (125*A1^2*bt0^2*G14)/2304 + 
   (3*A1^2*bt0*G10*G14)/64 - (A1^2*G10^2*G14)/128 - (A1^3*G11*G14)/192 + 
   (5*A1^3*bt0*G15)/384 - (A1^3*G10*G15)/192 - (A1^4*G16)/768 + (A3*G20)/72 - 
   (11*bt0*bt1*G20)/30 + (bt1*G10*G20)/12 - (A2*G11*G20)/64 + 
   (5*bt0^2*G11*G20)/16 - (7*bt0*G10*G11*G20)/48 + (G10^2*G11*G20)/64 + 
   (A1*G11^2*G20)/64 - (25*A1*bt0*G12*G20)/192 + (A1*G10*G12*G20)/32 + 
   (A1^2*G13*G20)/64 + (bt0*G20^2)/12 - (G10*G20^2)/64 + (5*A2*bt0*G21)/72 - 
   (2*bt0^3*G21)/5 + (5*A1*bt1*G21)/72 - (A2*G10*G21)/64 + 
   (5*bt0^2*G10*G21)/16 - (7*bt0*G10^2*G21)/96 + (G10^3*G21)/192 - 
   (25*A1*bt0*G11*G21)/192 + (A1*G10*G11*G21)/32 + (A1^2*G12*G21)/64 - 
   (A1*G20*G21)/32 - (A1*A2*G22)/64 + (35*A1*bt0^2*G22)/144 - 
   (25*A1*bt0*G10*G22)/192 + (A1*G10^2*G22)/64 + (A1^2*G11*G22)/64 - 
   (11*A1^2*bt0*G23)/192 + (A1^2*G10*G23)/64 + (A1^3*G24)/192 + (A2*G30)/48 - 
   (3*bt0^2*G30)/5 + (11*bt0*G10*G30)/48 - (G10^2*G30)/48 - (A1*G11*G30)/24 + 
   (5*A1*bt0*G31)/24 - (A1*G10*G31)/24 - (A1^2*G32)/48 + (A1*G40)/16)/ep^3 + 
 (G11*G41)/16 + (-A5/50 - (bt3*G10)/40 + (A4*G11)/64 - (3*bt1^2*G11)/80 - 
   (7*bt0*bt2*G11)/60 + (bt2*G10*G11)/24 - (A3*G11^2)/144 + 
   (5*bt0*bt1*G11^2)/48 - (bt1*G10*G11^2)/32 + (A2*G11^3)/384 - 
   (7*bt0^2*G11^3)/192 + (bt0*G10*G11^3)/48 - (G10^2*G11^3)/384 - 
   (A1*G11^4)/768 + (35*A3*bt0*G12)/576 + (5*A2*bt1*G12)/192 - 
   (29*bt0^2*bt1*G12)/120 + (5*A1*bt2*G12)/192 - (A3*G10*G12)/72 + 
   (5*bt0*bt1*G10*G12)/24 - (bt1*G10^2*G12)/32 - (17*A2*bt0*G11*G12)/288 + 
   (5*bt0^3*G11*G12)/24 - (7*A1*bt1*G11*G12)/144 + (A2*G10*G11*G12)/64 - 
   (7*bt0^2*G10*G11*G12)/32 + (bt0*G10^2*G11*G12)/16 - (G10^3*G11*G12)/192 + 
   (7*A1*bt0*G11^2*G12)/128 - (A1*G10*G11^2*G12)/64 + (A1*A2*G12^2)/128 - 
   (23*A1*bt0^2*G12^2)/288 + (7*A1*bt0*G10*G12^2)/128 - 
   (A1*G10^2*G12^2)/128 - (A1^2*G11*G12^2)/128 - (A2^2*G13)/256 - 
   (A1*A3*G13)/72 + (55*A2*bt0^2*G13)/576 - (bt0^4*G13)/10 + 
   (35*A1*bt0*bt1*G13)/288 - (17*A2*bt0*G10*G13)/288 + (5*bt0^3*G10*G13)/24 - 
   (7*A1*bt1*G10*G13)/144 + (A2*G10^2*G13)/128 - (7*bt0^2*G10^2*G13)/64 + 
   (bt0*G10^3*G13)/48 - (G10^4*G13)/768 + (A1*A2*G11*G13)/64 - 
   (23*A1*bt0^2*G11*G13)/144 + (7*A1*bt0*G10*G11*G13)/64 - 
   (A1*G10^2*G11*G13)/64 - (A1^2*G11^2*G13)/128 + (3*A1^2*bt0*G12*G13)/64 - 
   (A1^2*G10*G12*G13)/64 - (A1^3*G13^2)/384 - (59*A1*A2*bt0*G14)/1152 + 
   (65*A1*bt0^3*G14)/576 - (5*A1^2*bt1*G14)/288 + (A1*A2*G10*G14)/64 - 
   (23*A1*bt0^2*G10*G14)/144 + (7*A1*bt0*G10^2*G14)/128 - 
   (A1*G10^3*G14)/192 + (3*A1^2*bt0*G11*G14)/64 - (A1^2*G10*G11*G14)/64 - 
   (A1^3*G12*G14)/192 + (A1^2*A2*G15)/128 - (125*A1^2*bt0^2*G15)/2304 + 
   (3*A1^2*bt0*G10*G15)/64 - (A1^2*G10^2*G15)/128 - (A1^3*G11*G15)/192 + 
   (5*A1^3*bt0*G16)/384 - (A1^3*G10*G16)/192 - (A1^4*G17)/768 - 
   (bt2*G20)/15 + (bt1*G11*G20)/12 - (7*bt0*G11^2*G20)/96 + 
   (G10*G11^2*G20)/64 - (A2*G12*G20)/64 + (5*bt0^2*G12*G20)/16 - 
   (7*bt0*G10*G12*G20)/48 + (G10^2*G12*G20)/64 + (A1*G11*G12*G20)/32 - 
   (25*A1*bt0*G13*G20)/192 + (A1*G10*G13*G20)/32 + (A1^2*G14*G20)/64 - 
   (G11*G20^2)/64 + (A3*G21)/72 - (11*bt0*bt1*G21)/30 + (bt1*G10*G21)/12 - 
   (A2*G11*G21)/64 + (5*bt0^2*G11*G21)/16 - (7*bt0*G10*G11*G21)/48 + 
   (G10^2*G11*G21)/64 + (A1*G11^2*G21)/64 - (25*A1*bt0*G12*G21)/192 + 
   (A1*G10*G12*G21)/32 + (A1^2*G13*G21)/64 + (bt0*G20*G21)/6 - 
   (G10*G20*G21)/32 - (A1*G21^2)/64 + (5*A2*bt0*G22)/72 - (2*bt0^3*G22)/5 + 
   (5*A1*bt1*G22)/72 - (A2*G10*G22)/64 + (5*bt0^2*G10*G22)/16 - 
   (7*bt0*G10^2*G22)/96 + (G10^3*G22)/192 - (25*A1*bt0*G11*G22)/192 + 
   (A1*G10*G11*G22)/32 + (A1^2*G12*G22)/64 - (A1*G20*G22)/32 - 
   (A1*A2*G23)/64 + (35*A1*bt0^2*G23)/144 - (25*A1*bt0*G10*G23)/192 + 
   (A1*G10^2*G23)/64 + (A1^2*G11*G23)/64 - (11*A1^2*bt0*G24)/192 + 
   (A1^2*G10*G24)/64 + (A1^3*G25)/192 - (3*bt1*G30)/20 + 
   (11*bt0*G11*G30)/48 - (G10*G11*G30)/24 - (A1*G12*G30)/24 + (G20*G30)/24 + 
   (A2*G31)/48 - (3*bt0^2*G31)/5 + (11*bt0*G10*G31)/48 - (G10^2*G31)/48 - 
   (A1*G11*G31)/24 + (5*A1*bt0*G32)/24 - (A1*G10*G32)/24 - (A1^2*G33)/48 - 
   (2*bt0*G40)/5 + (G10*G40)/16 + (A1*G41)/16)/ep^2 - (2*bt0*G42)/5 + 
 (G10*G42)/16 + (A1*G43)/16 + (-(bt3*G11)/40 + (bt2*G11^2)/48 - 
   (bt1*G11^3)/96 + (bt0*G11^4)/192 - (G10*G11^4)/768 + (A4*G12)/64 - 
   (3*bt1^2*G12)/80 - (7*bt0*bt2*G12)/60 + (bt2*G10*G12)/24 - 
   (A3*G11*G12)/72 + (5*bt0*bt1*G11*G12)/24 - (bt1*G10*G11*G12)/16 + 
   (A2*G11^2*G12)/128 - (7*bt0^2*G11^2*G12)/64 + (bt0*G10*G11^2*G12)/16 - 
   (G10^2*G11^2*G12)/128 - (A1*G11^3*G12)/192 - (17*A2*bt0*G12^2)/576 + 
   (5*bt0^3*G12^2)/48 - (7*A1*bt1*G12^2)/288 + (A2*G10*G12^2)/128 - 
   (7*bt0^2*G10*G12^2)/64 + (bt0*G10^2*G12^2)/32 - (G10^3*G12^2)/384 + 
   (7*A1*bt0*G11*G12^2)/128 - (A1*G10*G11*G12^2)/64 - (A1^2*G12^3)/384 + 
   (35*A3*bt0*G13)/576 + (5*A2*bt1*G13)/192 - (29*bt0^2*bt1*G13)/120 + 
   (5*A1*bt2*G13)/192 - (A3*G10*G13)/72 + (5*bt0*bt1*G10*G13)/24 - 
   (bt1*G10^2*G13)/32 - (17*A2*bt0*G11*G13)/288 + (5*bt0^3*G11*G13)/24 - 
   (7*A1*bt1*G11*G13)/144 + (A2*G10*G11*G13)/64 - (7*bt0^2*G10*G11*G13)/32 + 
   (bt0*G10^2*G11*G13)/16 - (G10^3*G11*G13)/192 + (7*A1*bt0*G11^2*G13)/128 - 
   (A1*G10*G11^2*G13)/64 + (A1*A2*G12*G13)/64 - (23*A1*bt0^2*G12*G13)/144 + 
   (7*A1*bt0*G10*G12*G13)/64 - (A1*G10^2*G12*G13)/64 - 
   (A1^2*G11*G12*G13)/64 + (3*A1^2*bt0*G13^2)/128 - (A1^2*G10*G13^2)/128 - 
   (A2^2*G14)/256 - (A1*A3*G14)/72 + (55*A2*bt0^2*G14)/576 - (bt0^4*G14)/10 + 
   (35*A1*bt0*bt1*G14)/288 - (17*A2*bt0*G10*G14)/288 + (5*bt0^3*G10*G14)/24 - 
   (7*A1*bt1*G10*G14)/144 + (A2*G10^2*G14)/128 - (7*bt0^2*G10^2*G14)/64 + 
   (bt0*G10^3*G14)/48 - (G10^4*G14)/768 + (A1*A2*G11*G14)/64 - 
   (23*A1*bt0^2*G11*G14)/144 + (7*A1*bt0*G10*G11*G14)/64 - 
   (A1*G10^2*G11*G14)/64 - (A1^2*G11^2*G14)/128 + (3*A1^2*bt0*G12*G14)/64 - 
   (A1^2*G10*G12*G14)/64 - (A1^3*G13*G14)/192 - (59*A1*A2*bt0*G15)/1152 + 
   (65*A1*bt0^3*G15)/576 - (5*A1^2*bt1*G15)/288 + (A1*A2*G10*G15)/64 - 
   (23*A1*bt0^2*G10*G15)/144 + (7*A1*bt0*G10^2*G15)/128 - 
   (A1*G10^3*G15)/192 + (3*A1^2*bt0*G11*G15)/64 - (A1^2*G10*G11*G15)/64 - 
   (A1^3*G12*G15)/192 + (A1^2*A2*G16)/128 - (125*A1^2*bt0^2*G16)/2304 + 
   (3*A1^2*bt0*G10*G16)/64 - (A1^2*G10^2*G16)/128 - (A1^3*G11*G16)/192 + 
   (5*A1^3*bt0*G17)/384 - (A1^3*G10*G17)/192 - (A1^4*G18)/768 + 
   (G11^3*G20)/192 + (bt1*G12*G20)/12 - (7*bt0*G11*G12*G20)/48 + 
   (G10*G11*G12*G20)/32 + (A1*G12^2*G20)/64 - (A2*G13*G20)/64 + 
   (5*bt0^2*G13*G20)/16 - (7*bt0*G10*G13*G20)/48 + (G10^2*G13*G20)/64 + 
   (A1*G11*G13*G20)/32 - (25*A1*bt0*G14*G20)/192 + (A1*G10*G14*G20)/32 + 
   (A1^2*G15*G20)/64 - (G12*G20^2)/64 - (bt2*G21)/15 + (bt1*G11*G21)/12 - 
   (7*bt0*G11^2*G21)/96 + (G10*G11^2*G21)/64 - (A2*G12*G21)/64 + 
   (5*bt0^2*G12*G21)/16 - (7*bt0*G10*G12*G21)/48 + (G10^2*G12*G21)/64 + 
   (A1*G11*G12*G21)/32 - (25*A1*bt0*G13*G21)/192 + (A1*G10*G13*G21)/32 + 
   (A1^2*G14*G21)/64 - (G11*G20*G21)/32 + (bt0*G21^2)/12 - (G10*G21^2)/64 + 
   (A3*G22)/72 - (11*bt0*bt1*G22)/30 + (bt1*G10*G22)/12 - (A2*G11*G22)/64 + 
   (5*bt0^2*G11*G22)/16 - (7*bt0*G10*G11*G22)/48 + (G10^2*G11*G22)/64 + 
   (A1*G11^2*G22)/64 - (25*A1*bt0*G12*G22)/192 + (A1*G10*G12*G22)/32 + 
   (A1^2*G13*G22)/64 + (bt0*G20*G22)/6 - (G10*G20*G22)/32 - (A1*G21*G22)/32 + 
   (5*A2*bt0*G23)/72 - (2*bt0^3*G23)/5 + (5*A1*bt1*G23)/72 - 
   (A2*G10*G23)/64 + (5*bt0^2*G10*G23)/16 - (7*bt0*G10^2*G23)/96 + 
   (G10^3*G23)/192 - (25*A1*bt0*G11*G23)/192 + (A1*G10*G11*G23)/32 + 
   (A1^2*G12*G23)/64 - (A1*G20*G23)/32 - (A1*A2*G24)/64 + 
   (35*A1*bt0^2*G24)/144 - (25*A1*bt0*G10*G24)/192 + (A1*G10^2*G24)/64 + 
   (A1^2*G11*G24)/64 - (11*A1^2*bt0*G25)/192 + (A1^2*G10*G25)/64 + 
   (A1^3*G26)/192 - (G11^2*G30)/48 + (11*bt0*G12*G30)/48 - (G10*G12*G30)/24 - 
   (A1*G13*G30)/24 + (G21*G30)/24 - (3*bt1*G31)/20 + (11*bt0*G11*G31)/48 - 
   (G10*G11*G31)/24 - (A1*G12*G31)/24 + (G20*G31)/24 + (A2*G32)/48 - 
   (3*bt0^2*G32)/5 + (11*bt0*G10*G32)/48 - (G10^2*G32)/48 - (A1*G11*G32)/24 + 
   (5*A1*bt0*G33)/24 - (A1*G10*G33)/24 - (A1^2*G34)/48 + (G11*G40)/16 - 
   (2*bt0*G41)/5 + (G10*G41)/16 + (A1*G42)/16 - G50/10)/ep - G51/10
);
Fqml5lres = Collect[Expand[Normal[Series[Fqml5l /. subs2 /. subs3 /. subs4, {ep, 0, -3}]]], {ep, nc, nl, nfv}]; 

(****************************************)
(* Ratios of Massive and Massless FF: Z *)
(* See Eq. (5.4) & (5.5) of paper       *)
(****************************************)

Z1 = ( C10 + A1/(2*ep^2) + C11*ep + C12*ep^2 + C13*ep^3 + C14*ep^4 - K1/(2*ep) );
Z1res = Collect[Expand[Normal[Series[Expand[Z1 /. subs2 /. subs3 /. subs4], {ep, 0, 4}]]], {ep, nc, nl}];

Z2 = ( (A1*C12)/2 + C20 + A1^2/(8*ep^4) - (C11*K1)/2 + 
 ((-3*A1*bt0)/8 - (A1*K1)/4)/ep^3 + ep*((A1*C13)/2 + C21 - (C12*K1)/2) + 
 ep^2*((A1*C14)/2 + C22 - (C13*K1)/2) + 
 (A2/8 + (A1*C10)/2 + (bt0*K1)/4 + K1^2/8)/ep^2 + 
 ((A1*C11)/2 - (C10*K1)/2 - K2/4)/ep );
Z2res = Collect[Expand[Normal[Series[Expand[Z2 /. subs2 /. subs3 /. subs4], {ep, 0, 2}]]], {ep, nc, nl}];

Z3 = ( (A2*C12)/8 - (3*A1*bt0*C13)/8 + (A1^2*C14)/8 + (A1*C22)/2 + C30 + 
 A1^3/(48*ep^6) + (bt0*C12*K1)/4 - (A1*C13*K1)/4 - (C21*K1)/2 + 
 (C12*K1^2)/8 + ((-3*A1^2*bt0)/16 - (A1^2*K1)/16)/ep^5 + 
 ((A1*A2)/16 + (11*A1*bt0^2)/36 + (A1^2*C10)/8 + (5*A1*bt0*K1)/16 + 
   (A1*K1^2)/16)/ep^4 - (C11*K2)/4 + 
 ((-5*A2*bt0)/36 - (2*A1*bt1)/9 - (3*A1*bt0*C10)/8 + (A1^2*C11)/8 - 
   (A2*K1)/16 - (bt0^2*K1)/6 - (A1*C10*K1)/4 - (bt0*K1^2)/8 - K1^3/48 - 
   (A1*K2)/8)/ep^3 + (A3/18 + (A2*C10)/8 - (3*A1*bt0*C11)/8 + (A1^2*C12)/8 + 
   (A1*C20)/2 + (bt1*K1)/6 + (bt0*C10*K1)/4 - (A1*C11*K1)/4 + (C10*K1^2)/8 + 
   (bt0*K2)/6 + (K1*K2)/8)/ep^2 + 
 ((A2*C11)/8 - (3*A1*bt0*C12)/8 + (A1^2*C13)/8 + (A1*C21)/2 + 
   (bt0*C11*K1)/4 - (A1*C12*K1)/4 - (C20*K1)/2 + (C11*K1^2)/8 - (C10*K2)/4 - 
   K3/6)/ep );
Z3res = Collect[Expand[Normal[Series[Expand[Z3 /. subs2 /. subs3 /. subs4], {ep, 0, 0}]]], {ep, nc, nl}];

Z4 = ( A1^4/(384*ep^8) + ((-3*A1^3*bt0)/64 - (A1^3*K1)/96)/ep^7 + 
 ((A1^2*A2)/64 + (257*A1^2*bt0^2)/1152 + (A1^3*C10)/48 + (A1^2*bt0*K1)/8 + 
   (A1^2*K1^2)/64)/ep^6 + ((-67*A1*A2*bt0)/576 - (25*A1*bt0^3)/96 - 
   (A1^2*bt1)/9 - (3*A1^2*bt0*C10)/16 + (A1^3*C11)/48 - (A1*A2*K1)/32 - 
   (95*A1*bt0^2*K1)/288 - (A1^2*C10*K1)/16 - (7*A1*bt0*K1^2)/64 - 
   (A1*K1^3)/96 - (A1^2*K2)/32)/ep^5 + 
 (A2^2/128 + (A1*A3)/36 + (13*A2*bt0^2)/96 + (5*A1*bt0*bt1)/12 + 
   (A1*A2*C10)/16 + (11*A1*bt0^2*C10)/36 - (3*A1^2*bt0*C11)/16 + 
   (A1^3*C12)/48 + (A1^2*C20)/8 + (29*A2*bt0*K1)/288 + (bt0^3*K1)/8 + 
   (7*A1*bt1*K1)/36 + (5*A1*bt0*C10*K1)/16 - (A1^2*C11*K1)/16 + 
   (A2*K1^2)/64 + (11*bt0^2*K1^2)/96 + (A1*C10*K1^2)/16 + (bt0*K1^3)/32 + 
   K1^4/384 + (17*A1*bt0*K2)/96 + (A1*K1*K2)/16)/ep^4 + 
 ((-7*A3*bt0)/96 - (3*A2*bt1)/32 - (5*A1*bt2)/32 - (5*A2*bt0*C10)/36 - 
   (2*A1*bt1*C10)/9 + (A1*A2*C11)/16 + (11*A1*bt0^2*C11)/36 - 
   (3*A1^2*bt0*C12)/16 + (A1^3*C13)/48 - (3*A1*bt0*C20)/8 + (A1^2*C21)/8 - 
   (A3*K1)/36 - (bt0*bt1*K1)/4 - (A2*C10*K1)/16 - (bt0^2*C10*K1)/6 + 
   (5*A1*bt0*C11*K1)/16 - (A1^2*C12*K1)/16 - (A1*C20*K1)/4 - (bt1*K1^2)/12 - 
   (bt0*C10*K1^2)/8 + (A1*C11*K1^2)/16 - (C10*K1^3)/48 - (A2*K2)/32 - 
   (bt0^2*K2)/8 - (A1*C10*K2)/8 - (7*bt0*K1*K2)/48 - (K1^2*K2)/32 - 
   (A1*K3)/12)/ep^3 + (A4/32 + (A3*C10)/18 - (5*A2*bt0*C11)/36 - 
   (2*A1*bt1*C11)/9 + (A1*A2*C12)/16 + (11*A1*bt0^2*C12)/36 - 
   (3*A1^2*bt0*C13)/16 + (A1^3*C14)/48 + (A2*C20)/8 - (3*A1*bt0*C21)/8 + 
   (A1^2*C22)/8 + (A1*C30)/2 + (bt2*K1)/8 + (bt1*C10*K1)/6 - (A2*C11*K1)/16 - 
   (bt0^2*C11*K1)/6 + (5*A1*bt0*C12*K1)/16 - (A1^2*C13*K1)/16 + 
   (bt0*C20*K1)/4 - (A1*C21*K1)/4 - (bt0*C11*K1^2)/8 + (A1*C12*K1^2)/16 + 
   (C20*K1^2)/8 - (C11*K1^3)/48 + (bt1*K2)/8 + (bt0*C10*K2)/6 - 
   (A1*C11*K2)/8 + (C10*K1*K2)/8 + K2^2/32 + (bt0*K3)/8 + (K1*K3)/12)/ep^2 );
Z4res = Collect[Expand[Normal[Series[Expand[Z4 /. subs2 /. subs3 /. subs4], {ep, 0, -2}]]], {ep, nc, nl}];

(*------------------------------------------------------------------------*)
(* lnF1mv: lnFtilde, Eq. (2.15) of paper                                  *)
(* au = ahat S_epsilon: ahat is the bare coupling constant                *)
(* S_epsilon is defined in paper after Eq. (2.5)                          *)
(* ZasmI = (Zas(m^2))^-1  : defined in Eq. (2.10)                         *)
(* musq = mu^2, msq = m^2 & Qsq = Q^2                                     *)
(*------------------------------------------------------------------------*)

subs5 = {
mBYmu -> Normal[Series[(msq/musq)^(-ep), {ep, 0, 7}]],
zasmI1 -> (bt0/ep),
zasmI2 -> (bt0^2/ep^2 + bt1/(2*ep)),
zasmI3 -> (bt0^3/ep^3 + (4*bt0*bt1)/(3*ep^2) + bt2/(3*ep)),
zasmI4 -> (bt0^4/ep^4 + (29*bt0^2*bt1)/(12*ep^3) + (3*bt1^2)/(8*ep^2) +
           (7*bt0*bt2)/(6*ep^2) + bt3/(4*ep))
}

subs6 = {
LQm -> ( Log[Qsq/musq]-Log[msq/musq] )
}

subs7 = {
Log[msq/musq] -> Log[msq]-Log[musq], 
Log[Qsq/musq] -> Log[Qsq]-Log[musq]
}

subs8 = {
Log[Qsq] -> Log[Qsq/musq]+Log[musq], 
Log[msq] -> Log[msq/musq]+Log[musq]
}

lnF1mv = (asm*lnF1mv1l + asm^2*lnF1mv2l + asm^3*lnF1mv3l + asm^4*lnF1mv4l);
lnF1mv = lnF1mv /. {asm -> au*mBYmu*ZasmI};
lnF1mv = Normal[Series[lnF1mv /. {ZasmI -> (1 + au zasmI1 + au^2 zasmI2 + au^3 zasmI3 + au^4 zasmI4)}, {au, 0, 4}]];
lnF1mv = Normal[Series[Expand[lnF1mv /. subs5 /. subs6], {ep, 0, 4}]];
DlnF1mv = Collect[Expand[(-1)*D[Expand[lnF1mv /. subs7], Log[musq]]], ep];
DlnF1mv = Collect[Expand[DlnF1mv /. subs8], ep];

(************ THE END   **********)
