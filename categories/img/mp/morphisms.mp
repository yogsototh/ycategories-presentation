
z0=(0,0);
z1=z0 shifted (gu,0);
z2=z1 shifted (gu,0);
z3=z2 shifted (gu,-0.5gu);
z4=z3 shifted (gu,0);
z5=z4 shifted (1.5u,0);
z6=z5 shifted (2u,0);

drawblock(z0,z6,btex $\mathcal{C}$ etex);

drawState(z0, btex $A$ etex);
drawState(z1, btex $B$ etex);
drawState(z2, btex $C$ etex);

drawState(z3, btex $D$ etex);

drawoptions(withcolor base01);
drawarrow largeloop(z3,z3 shifted (0,3.8u)) dashed evenly;
drawarrow largeloop(z3,z3 shifted (0,4u)) dashed evenly;
drawState(z4, btex $E$ etex);
drawEdge(z4,z4, btex $id_E$ etex);
drawarrow edgeAngle(z3,z4,0) dashed evenly;
drawarrow edgeAngle(z3,z4,20) dashed evenly;
drawarrow edgeAngle(z3,z4,-20) dashed evenly;
draw z5 -- z6 dashed withdots withpen pencircle scaled 2bp;

drawoptions(withcolor yellow);
drawarrow largeloop(z3,z3 shifted (0,3.5u)) dashed evenly;
drawEdge(z3,z3, btex $id_D$ etex);
drawloop(z3,z3 shifted (0,2.5u),btex $\ell$ etex);

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
