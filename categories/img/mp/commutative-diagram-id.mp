z0=(0,0);
z1=(gu,0);
z2=(0,-gu);
z3=(gu,-gu);
path ac,ab;

label(btex $A$ etex,z0);
label(btex $A$ etex,z1);
label(btex $B$ etex,z2);
label(btex $B$ etex,z3);

drawEdge(z0,z1,btex $id_A$ etex);
drawEdge(z1,z2,btex $f$ etex);
ab:=edge(z0,z2);
drawarrow ab;
label.lft(btex $f$ etex,midpoint(ab));

drawEdge(z2,z3,btex $id_B$ etex);

ac:=edge(z1,z3);
drawarrow ac;
label.rt(btex $f$ etex,midpoint(ac));

