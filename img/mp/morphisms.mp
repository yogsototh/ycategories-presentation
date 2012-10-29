
z0=(0,0);
z1=z0 shifted (gu,0);
z2=z1 shifted (gu,0);
z3=1/2[z0,z1] shifted (0,-gu);
z4=1/2[z1,z2] shifted (0,-gu);
z5=z4 shifted (1.5u,0);
z6=z5 shifted (2u,0);

drawState(z0, btex $A$ etex);
drawState(z1, btex $B$ etex);
drawState(z2, btex $C$ etex);

drawoptions(withcolor base01);
drawState(z3, btex $D$ etex);
drawState(z4, btex $E$ etex);
draw z5 -- z6 dashed withdots withpen pencircle scaled 2bp;
drawEdge(z3,z3, btex $id_D$ etex);
drawEdge(z4,z4, btex $id_E$ etex);

drawoptions(withcolor yellow);

drawEdge(z0,z1, btex $f$ etex);
drawEdgeWithAngle(z0,z1, btex $f'$ etex, 45);

drawEdge(z0,z0, btex $id_A$ etex);
drawEdge(z1,z1, btex $id_B$ etex);
drawEdge(z2,z2, btex $id_C$ etex);

drawEdgeWithAngle(z1,z2, btex $g$ etex, 0);
drawEdgeWithAngle(z1,z2, btex $g'$ etex, 45);

drawEdgeWithAngle(z0,z2, btex $h$ etex, -30);
drawarrow edgeAngle(z0,z2,-45) dashed evenly;
drawarrow edgeAngle(z0,z2,-55) dashed evenly withcolor base01;
drawarrow edgeAngle(z0,z2,-60) dashed evenly withcolor base01;
