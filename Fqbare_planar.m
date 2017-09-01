(*
al4p0  = \alpha_s^{bare}/(4\pi)
eQ     = (\mu^2/-q^2)^\epsilon
ep     = \epsilon
nc     = N_c
nf     = n_f
HPLs8a = s_{8a}
*)

Fqbare = 1 + al4p0*eQ*nc*(-4 - ep^(-2) - 3/(2*ep) + Pi^2/12 + 
       ep*(-8 + Pi^2/8 + (7*Zeta[3])/3) + 
       ep^2*(-16 + Pi^2/3 + (47*Pi^4)/1440 + (7*Zeta[3])/2) + 
       ep^3*(-32 + (2*Pi^2)/3 + (47*Pi^4)/960 + (28*Zeta[3])/3 - 
         (7*Pi^2*Zeta[3])/36 + (31*Zeta[5])/5) + 
       ep^4*(-64 + (4*Pi^2)/3 + (47*Pi^4)/360 + (949*Pi^6)/120960 + 
         (56*Zeta[3])/3 - (7*Pi^2*Zeta[3])/24 - (49*Zeta[3]^2)/18 + 
         (93*Zeta[5])/10) + ep^5*(-128 + (8*Pi^2)/3 + (47*Pi^4)/180 + 
         (949*Pi^6)/80640 + (112*Zeta[3])/3 - (7*Pi^2*Zeta[3])/9 - 
         (329*Pi^4*Zeta[3])/4320 - (49*Zeta[3]^2)/12 + (124*Zeta[5])/5 - 
         (31*Pi^2*Zeta[5])/60 + (127*Zeta[7])/7) + 
       ep^6*(-256 + (16*Pi^2)/3 + (47*Pi^4)/90 + (949*Pi^6)/30240 + 
         (18593*Pi^8)/9676800 + (224*Zeta[3])/3 - (14*Pi^2*Zeta[3])/9 - 
         (329*Pi^4*Zeta[3])/2880 - (98*Zeta[3]^2)/9 + (49*Pi^2*Zeta[3]^2)/
          216 + (248*Zeta[5])/5 - (31*Pi^2*Zeta[5])/40 - 
         (217*Zeta[3]*Zeta[5])/15 + (381*Zeta[7])/14)) + 
     al4p0^4*eQ^4*(nc*((10739263*nf^3)/34992 + nf^3/(54*ep^5) + 
         (11*nf^3)/(54*ep^4) + (145115*nf^3*Pi^2)/8748 + 
         (1661*nf^3*Pi^4)/4860 + ((127*nf^3)/81 + (5*nf^3*Pi^2)/162)/ep^3 - 
         (10414*nf^3*Zeta[3])/243 - (205*nf^3*Pi^2*Zeta[3])/243 + 
         ((331889*nf^3)/5832 + (635*nf^3*Pi^2)/243 + (151*nf^3*Pi^4)/4860 - 
           (451*nf^3*Zeta[3])/81)/ep + ((29023*nf^3)/2916 + 
           (55*nf^3*Pi^2)/162 - (41*nf^3*Zeta[3])/81)/ep^2 - 
         (1097*nf^3*Zeta[5])/135) + nc^2*((-68487272627*nf^2)/15116544 + 
         (41*nf^2)/(648*ep^6) + (277*nf^2)/(972*ep^5) - (295056623*nf^2*Pi^2)/
          1259712 - (889*nf^2*Pi^4)/6480 + (43559*nf^2*Pi^6)/204120 + 
         ((5*nf^2)/24 + (127*nf^2*Pi^2)/1944)/ep^4 + (65735207*nf^2*Zeta[3])/
          52488 - (4262*nf^2*Pi^2*Zeta[3])/2187 - (71711*nf^2*Zeta[3]^2)/
          1458 + ((-630593*nf^2)/69984 + (293*nf^2*Pi^2)/2916 + 
           (229*nf^2*Zeta[3])/486)/ep^3 + ((-41264407*nf^2)/419904 - 
           (155*nf^2*Pi^2)/72 + (2623*nf^2*Pi^4)/29160 + (11684*nf^2*Zeta[3])/
            729)/ep^2 + (725828*nf^2*Zeta[5])/1215 + 
         ((-608092805*nf^2)/839808 - (6041473*nf^2*Pi^2)/209952 + 
           (8263*nf^2*Pi^4)/21870 + (661*nf^2*Zeta[3])/4 - 
           (1805*nf^2*Pi^2*Zeta[3])/729 + (19877*nf^2*Zeta[5])/405)/ep) + 
       nc^3*((555003607961*nf)/30233088 + nf/(12*ep^7) - (37*nf)/(648*ep^6) + 
         (785989381*nf*Pi^2)/839808 - (34077673*nf*Pi^4)/2099520 - 
         (146197*nf*Pi^6)/612360 + ((-6431*nf)/3888 + (41*nf*Pi^2)/648)/
          ep^5 - (1774255975*nf*Zeta[3])/209952 + (265217*nf*Pi^2*Zeta[3])/
          3888 - (2692*nf*Pi^4*Zeta[3])/3645 + (973135*nf*Zeta[3]^2)/1458 + 
         ((-72953*nf)/7776 - (227*nf*Pi^2)/972 + (215*nf*Zeta[3])/108)/ep^4 + 
         ((-1074359*nf)/69984 - (2125*nf*Pi^2)/1296 + (413*nf*Pi^4)/3888 + 
           (2411*nf*Zeta[3])/243)/ep^3 - (56656921*nf*Zeta[5])/19440 - 
         (58657*nf*Pi^2*Zeta[5])/1620 + ((662170621*nf)/279936 + 
           (17271517*nf*Pi^2)/209952 - (78419*nf*Pi^4)/25920 + 
           (21625*nf*Pi^6)/81648 - (5427821*nf*Zeta[3])/5832 + 
           (48563*nf*Pi^2*Zeta[3])/2916 - (1373*nf*Zeta[3]^2)/324 + 
           (12847*nf*Zeta[5])/810)/ep + ((155932291*nf)/839808 - 
           (27377*nf*Pi^2)/69984 - (1309*nf*Pi^4)/7290 - (537625*nf*Zeta[3])/
            11664 - (599*nf*Pi^2*Zeta[3])/486 + (12853*nf*Zeta[5])/180)/
          ep^2 + (1643545*nf*Zeta[7])/1008) + 
       nc^4*(-2557273933957/120932352 + 1/(24*ep^8) - 5/(24*ep^7) + 
         (994*HPLs8a)/9 - (705077987*Pi^2)/629856 + (277722493*Pi^4)/
          8398080 - (2535245*Pi^6)/979776 + (60553*Pi^8)/291600 + 
         (-1393/2592 + Pi^2/36)/ep^6 + (468641/31104 + (5*Pi^2)/432 + 
           (131*Pi^4)/2592 - (1129*Zeta[3])/216)/ep^4 + (12252405131*Zeta[3])/
          839808 - (2632859*Pi^2*Zeta[3])/17496 + (200141*Pi^4*Zeta[3])/
          29160 - (18360691*Zeta[3]^2)/11664 - (4271*Pi^2*Zeta[3]^2)/324 + 
         (1687/3888 - (235*Pi^2)/1296 + (49*Zeta[3])/36)/ep^5 + 
         (228023779/3359232 + (712355*Pi^2)/69984 - (18773*Pi^4)/25920 + 
           (1367*Pi^6)/11664 - (2328569*Zeta[3])/23328 + (4681*Pi^2*Zeta[3])/
            972 + (4925*Zeta[3]^2)/216 - (5431*Zeta[5])/24)/ep^2 + 
         (47968099*Zeta[5])/38880 + (82075*Pi^2*Zeta[5])/648 + 
         (180349*Zeta[3]*Zeta[5])/180 + (20345125/279936 + 
           (123325*Pi^2)/46656 - (12509*Pi^4)/38880 - (190717*Zeta[3])/3888 + 
           (7*Pi^2*Zeta[3])/72 + (1973*Zeta[5])/60)/ep^3 - 
         (10819135*Zeta[7])/2016 + (-6286825873/3359232 - 
           (32197871*Pi^2)/559872 + (3214757*Pi^4)/1399680 - 
           (142253*Pi^6)/163296 + (49798075*Zeta[3])/46656 - 
           (1735*Pi^2*Zeta[3])/72 + (4253*Pi^4*Zeta[3])/3888 + 
           (91015*Zeta[3]^2)/648 - (5879599*Zeta[5])/6480 - 
           (5989*Pi^2*Zeta[5])/1080 + (83423*Zeta[7])/126)/ep)) + 
     al4p0^3*eQ^3*(nc*((-338858*nf^2)/6561 - (4*nf^2)/(81*ep^4) - 
         (94*nf^2)/(243*ep^3) - (31*nf^2*Pi^2)/18 - (83*nf^2*Pi^4)/9720 + 
         ((-62*nf^2)/27 - (nf^2*Pi^2)/27)/ep^2 + (1598*nf^2*Zeta[3])/243 + 
         ((-24950*nf^2)/2187 - (47*nf^2*Pi^2)/162 + (68*nf^2*Zeta[3])/81)/
          ep + ep*((-1456964*nf^2)/6561 - (12475*nf^2*Pi^2)/1458 - 
           (3901*nf^2*Pi^4)/58320 + (1054*nf^2*Zeta[3])/27 + 
           (17*nf^2*Pi^2*Zeta[3])/27 + (1124*nf^2*Zeta[5])/135) + 
         ep^2*((-54724312*nf^2)/59049 - (169429*nf^2*Pi^2)/4374 - 
           (2573*nf^2*Pi^4)/6480 + (44651*nf^2*Pi^6)/2449440 + 
           (424150*nf^2*Zeta[3])/2187 + (799*nf^2*Pi^2*Zeta[3])/162 - 
           (578*nf^2*Zeta[3]^2)/81 + (26414*nf^2*Zeta[5])/405)) + 
       nc^3*(-275367155/419904 - 1/(6*ep^6) + 1/(6*ep^5) - 
         (3478513*Pi^2)/139968 + (147533*Pi^4)/155520 - 
         (105757*Pi^6)/933120 + (443/324 - Pi^2/24)/ep^4 + 
         (28205/3888 + (1361*Pi^2)/3888 - (355*Pi^4)/5184 - 
           (463*Zeta[3])/108)/ep^2 + (5741/972 + (13*Pi^2)/81 - 
           (7*Zeta[3])/3)/ep^3 + (90046*Zeta[3])/243 - (733*Pi^2*Zeta[3])/
          144 - (163*Zeta[3]^2)/36 + (-4614139/69984 - (19931*Pi^2)/11664 + 
           (245*Pi^4)/5184 + (896*Zeta[3])/27 + (37*Pi^2*Zeta[3])/54 - 
           (631*Zeta[5])/15)/ep + (599*Zeta[5])/60 + 
         ep*(-3382933145/839808 - (144399283*Pi^2)/839808 + 
           (963361*Pi^4)/155520 + (68627*Pi^6)/1088640 + (27538069*Zeta[3])/
            11664 - (109*Pi^2*Zeta[3])/8 - (647*Pi^4*Zeta[3])/2592 - 
           (31235*Zeta[3]^2)/108 + (99463*Zeta[5])/135 + (2024*Pi^2*Zeta[5])/
            135 - (34999*Zeta[7])/63) + ep^2*(-313794810355/15116544 - 
           (1120*HPLs8a)/9 - (4726448731*Pi^2)/5038848 + (161554333*Pi^4)/
            5598720 + (17485837*Pi^6)/7838208 - (149062157*Pi^8)/1567641600 + 
           (285875137*Zeta[3])/23328 + (2261*Pi^2*Zeta[3])/162 - 
           (711113*Pi^4*Zeta[3])/51840 - (496321*Zeta[3]^2)/216 + 
           (3799*Pi^2*Zeta[3]^2)/432 + (2154061*Zeta[5])/405 - 
           (2739*Pi^2*Zeta[5])/80 - (2143*Zeta[3]*Zeta[5])/30 + 
           (208757*Zeta[7])/252)) + nc^2*((43890859*nf)/104976 - 
         nf/(6*ep^5) - (157*nf)/(324*ep^4) + (478807*nf*Pi^2)/34992 - 
         (3113*nf*Pi^4)/10368 + ((-397*nf)/972 - (41*nf*Pi^2)/648)/ep^3 - 
         (39143*nf*Zeta[3])/324 + (131*nf*Pi^2*Zeta[3])/72 + 
         ((1246163*nf)/17496 + (18467*nf*Pi^2)/11664 - (1483*nf*Pi^4)/25920 - 
           (5201*nf*Zeta[3])/324)/ep + ((7861*nf)/972 + (67*nf*Pi^2)/3888 - 
           (37*nf*Zeta[3])/54)/ep^2 - (2981*nf*Zeta[5])/90 + 
         ep*((16264427*nf)/7776 + (17177995*nf*Pi^2)/209952 - 
           (588487*nf*Pi^4)/466560 - (199399*nf*Pi^6)/2177280 - 
           (2049031*nf*Zeta[3])/2916 + (727*nf*Pi^2*Zeta[3])/432 + 
           (4319*nf*Zeta[3]^2)/108 - (163073*nf*Zeta[5])/540) + 
         ep^2*((36318891107*nf)/3779136 + (525542899*nf*Pi^2)/1259712 - 
           (1183679*nf*Pi^4)/279936 - (32191897*nf*Pi^6)/39191040 - 
           (61139975*nf*Zeta[3])/17496 - (3893*nf*Pi^2*Zeta[3])/144 + 
           (56929*nf*Pi^4*Zeta[3])/25920 + (247723*nf*Zeta[3]^2)/648 - 
           (2896573*nf*Zeta[5])/1620 + (833*nf*Pi^2*Zeta[5])/40 - 
           (73505*nf*Zeta[7])/126))) + al4p0^2*eQ^2*
      (nc^2*(-85115/2592 + 1/(2*ep^4) + 7/(12*ep^3) + 37/(72*ep^2) - 
         (323*Pi^2)/432 + (23*Pi^4)/720 + (103*Zeta[3])/9 + 
         (-2291/432 - (11*Pi^2)/72 + (7*Zeta[3])/6)/ep + 
         ep*(-2156723/15552 - (7259*Pi^2)/2592 + (173*Pi^4)/864 + 
           (5621*Zeta[3])/108 - (11*Pi^2*Zeta[3])/12 + (163*Zeta[5])/10) + 
         ep^2*(-47477003/93312 - (143435*Pi^2)/15552 + (22171*Pi^4)/25920 + 
           (47*Pi^6)/1890 + (131195*Zeta[3])/648 - (77*Pi^2*Zeta[3])/54 - 
           (403*Zeta[3]^2)/18 + (1399*Zeta[5])/15) + 
         ep^3*(-972246755/559872 - (2646611*Pi^2)/93312 + 
           (489643*Pi^4)/155520 + (11497*Pi^6)/60480 + (2698631*Zeta[3])/
            3888 - (1903*Pi^2*Zeta[3])/648 - (323*Pi^4*Zeta[3])/432 - 
           (2743*Zeta[3]^2)/27 + (70313*Zeta[5])/180 - (27*Pi^2*Zeta[5])/4 + 
           (1867*Zeta[7])/14) + ep^4*(-19076733179/3359232 - 
           (47337035*Pi^2)/559872 + (9741619*Pi^4)/933120 + 
           (302473*Pi^6)/362880 + (10393*Pi^8)/725760 + (51936935*Zeta[3])/
            23328 - (7045*Pi^2*Zeta[3])/3888 - (10199*Pi^4*Zeta[3])/3240 - 
           (130853*Zeta[3]^2)/324 + (247*Pi^2*Zeta[3]^2)/36 + 
           (1510031*Zeta[5])/1080 - (1157*Pi^2*Zeta[5])/90 - 
           (4087*Zeta[3]*Zeta[5])/15 + (2059*Zeta[7])/3)) + 
       nc*((7541*nf)/648 + nf/(6*ep^3) + (7*nf)/(9*ep^2) + (7*nf*Pi^2)/54 + 
         ((353*nf)/108 + (nf*Pi^2)/36)/ep - (13*nf*Zeta[3])/9 + 
         ep*((150125*nf)/3888 + (353*nf*Pi^2)/648 - (41*nf*Pi^4)/2160 - 
           (182*nf*Zeta[3])/27) + ep^3*((53933309*nf)/139968 + 
           (150125*nf*Pi^2)/23328 - (14473*nf*Pi^4)/38880 - 
           (127*nf*Pi^6)/6048 - (98033*nf*Zeta[3])/972 - (91*nf*Pi^2*Zeta[3])/
            81 + (169*nf*Zeta[3]^2)/27 - (1694*nf*Zeta[5])/45) + 
         ep^2*((2877653*nf)/23328 + (7541*nf*Pi^2)/3888 - 
           (287*nf*Pi^4)/3240 - (4589*nf*Zeta[3])/162 - (13*nf*Pi^2*Zeta[3])/
            54 - (121*nf*Zeta[5])/15) + ep^4*((996726245*nf)/839808 + 
           (2877653*nf*Pi^2)/139968 - (309181*nf*Pi^4)/233280 - 
           (127*nf*Pi^6)/1296 - (1951625*nf*Zeta[3])/5832 - 
           (4589*nf*Pi^2*Zeta[3])/972 + (533*nf*Pi^4*Zeta[3])/3240 + 
           (2366*nf*Zeta[3]^2)/81 - (42713*nf*Zeta[5])/270 - 
           (121*nf*Pi^2*Zeta[5])/90 - (1093*nf*Zeta[7])/21)))
