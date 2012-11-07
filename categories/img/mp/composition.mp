
z0=(0,0);
z1=z0 shifted (gu,0);

z2=z0 shifted (2gu,0);
z3=z1 shifted (2gu,0);

z4=(0.5gu,-.5gu);
z5=(1.5gu,-.5gu);
z6=(2.5gu,-.5gu);

drawState(z0, btex $A$ etex);
drawState(z1, btex $B$ etex);


drawState(z2, btex $B$ etex);
drawState(z3, btex $C$ etex);

drawState(z4, btex $A$ etex);
drawState(z5, btex $B$ etex);
drawState(z6, btex $C$ etex);


drawoptions(withcolor red);
drawEdge(z0,z1, btex $f$ etex);
drawEdge(z4,z5, btex $f$ etex);

drawoptions(withcolor blue);
drawEdge(z2,z3, btex $g$ etex);
drawEdge(z5,z6, btex $g$ etex);


drawoptions(withcolor yellow);
drawEdgeWithAngle(z4,z6, btex $g\circ f$ etex, -30);

