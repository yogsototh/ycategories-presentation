z0=(0,0);
z1=(gu,0);
z2=(0,-gu);
z3=(gu,-gu);

label(btex $A$ etex,z0);
label(btex $B$ etex,z1);
label(btex $B$ etex,z2);
label(btex $C$ etex,z3);

drawEdge(z0,z1,btex $f$ etex);

drawEdge(z1,z2,btex $g$ etex);

path ac,ab;
drawEdge(z2,z3,btex $h$ etex);

ac:=edge(z1,z3);
drawarrow ac;
label.rt(btex $h\circ g$ etex,midpoint(ac));

ab:=edge(z0,z2);
drawarrow ab;
label.lft(btex $g\circ f$ etex,midpoint(ab));
