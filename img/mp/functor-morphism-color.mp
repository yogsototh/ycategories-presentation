z0=(0,0);
z1=(gu,0);
z2=(.5gu,-.75gu);
z3=z0 shifted (2gu,0);
z4=z3 shifted (0,-.75gu);

drawblock(z0,(xpart z1,ypart z2),btex $\mathcal{C}$ etex);
drawblock(z3,z4,btex $\mathcal{D}=\mathbf{F}(\mathcal{C})$ etex);

drawoptions(withcolor yellow );
drawState(z0,btex $A$ etex);
drawState(z1,btex $B$ etex);
drawState(z3,btex $X$ etex);

drawoptions(withcolor red );
drawState(z2,btex $C$ etex);
drawState(z4,btex $Y$ etex);


drawoptions(withcolor green );
drawEdge(z2,z2,btex $id_C$ etex);


drawoptions(withcolor magenta );
drawarrow edgeTwoAngles(z1,z2,-90,180);
drawarrow edgeTwoAngles(z0,z2,-90,0);
drawarrow edgeTwoAngles(z3,z4,-35,35+180);

drawoptions(withcolor blue );
drawEdge(z0,z0,btex $id_A$ etex);
drawEdge(z1,z1,btex $id_B$ etex);
drawarrow edgeAngle(z0,z1,35);
drawarrow edgeAngle(z1,z0,-145);
drawEdge(z3,z3,btex $id_X$ etex);

drawoptions(withcolor green );
drawEdge(z4,z4,btex $id_Y$ etex);
