F4mlRes = Get[ToString[F4mlRes]];
FM = Get[ToString["Fqbare_planar.m"]];
F4M = Coefficient[FM, al4p0, 4];
nc = N;
eQ = 1;

res = Solve[Coefficient[F4mlRes, ep, 0] == Coefficient[F4M, ep, 0], G41];

G41 = Collect[Expand[G41 /. res], {N, nl}] >> G41p
