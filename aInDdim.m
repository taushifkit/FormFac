(** $ARTICLE:The Singular Behaviour of massive QCD amplitudes by Mitov and Moch **)
(** as is given to O(as^3) to all orders in ep **)
(** d = 4 -2 ep = 4 + e **)

cof1 = 1/X ( 1-ep bt1/bt0^2 Log[X]/X );
cof2 = - 1/X^2 ( bt1/bt0 (Log[X] + Y) );
cof3 = 1/X^3 ( bt1^2/bt0^2 3/2 (Log[X])^2 (1 + Y + 1/4 Y^2) + bt2/bt0 Log[X] (1/6 (3+Y) (1-X) - 1 - Y - 1/3 Y^2) );
abarQ1 = (  LQmepm (as cof1) );
abarQ2 = (  LQmepm (as^2 cof2) );
abarQ3 = (  LQmepm (as^3 cof3) );
(*
abarQ = (  LQmepm (as/X cof1 - as^2/X^2 cof2 + as^3/X^3 cof3) );
*)
X = 1 - as bt0/ep (LQmepm - 1);
Y = ( ep (1-X)/as/bt0 );

LQmepm = Normal[Series[Exp[- ep L], {ep, 0, 6}]];
L=LQm;
(* LQm = log(Q^2/m^2) *)

ans1 = Collect[Expand[Normal[Series[Normal[Series[abarQ1, {as, 0, 4}]], {ep, 0, 3}]]], {as, ep}];
ans2 = Collect[Expand[Normal[Series[Normal[Series[abarQ2, {as, 0, 4}]], {ep, 0, 3}]]], {as, ep}];
ans12 = Collect[Expand[Normal[Series[Normal[Series[abarQ1+abarQ2, {as, 0, 4}]], {ep, 0, 3}]]], {as, ep}];
ans3 = Collect[Expand[Normal[Series[Normal[Series[abarQ3, {as, 0, 4}]], {ep, 0, 3}]]], {as, ep}];
ans123 = Collect[Expand[Normal[Series[Normal[Series[abarQ1+abarQ2+abarQ3, {as, 0, 4}]], {ep, 0, 3}]]], {as, ep}];
(*
ans = Expand[Normal[Series[Normal[Series[abarQ, {as, 0, 3}]], {ep, 0, 4}]]];
ans1 = Collect[Coefficient[ans, as, 1], ep] >> abarQ
"(**)" >>> abarQ
ans2 = Collect[Coefficient[ans, as, 2], ep] >>> abarQ
"(**)" >>> abarQ
ans3 = Collect[Coefficient[ans, as, 3], ep] >>> abarQ
*)
