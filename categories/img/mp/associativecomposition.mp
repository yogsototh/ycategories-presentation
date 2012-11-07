z0=origin;
z1=(gu,0);
z2=(2gu,0);
z3=(3gu,0);

drawState(z0,btex $A$ etex);
drawState(z1,btex $B$ etex);
drawState(z2,btex $C$ etex);
drawState(z3,btex $D$ etex);

drawEdge(z1,z2,btex $g$ etex);

drawoptions(withcolor blue);
drawEdgeWithAngle(z0,z2,btex $g\circ f$ etex,30);
drawEdge(z2,z3,btex $h$ etex);

drawoptions(withcolor green);
drawEdge(z0,z1,btex $f$ etex);
drawEdgeWithAngle(z1,z3,btex $h\circ g$ etex,-30);

drawoptions(withcolor yellow);
drawEdgeWithAngle(z0,z3,btex $(h\circ g)\circ f = h\circ (g\circ f)$ etex,45);
