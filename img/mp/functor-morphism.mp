z0=(0,0); z1=(gu,0); z2=(.5gu,-.75gu);
drawState(z0,btex $A$ etex);
drawState(z1,btex $B$ etex);
drawState(z2,btex $C$ etex);


drawEdge(z0,z0,btex $id_A$ etex);
drawEdge(z1,z1,btex $id_B$ etex);
drawEdge(z2,z2,btex $id_C$ etex);
drawarrow edgeAngle(z0,z1,35);
drawarrow edgeAngle(z1,z0,-145);
drawarrow edgeTwoAngles(z1,z2,-90,180);
drawarrow edgeTwoAngles(z0,z2,-90,0);

drawoptions(withcolor blue);

z3=z0 shifted (2gu,0);
z4=z3 shifted (0,-.75gu);
drawState(z3,btex $X$ etex);
drawState(z4,btex $Y$ etex);
drawEdge(z3,z3,btex $id_X$ etex);
drawEdge(z4,z4,btex $id_Y$ etex);
drawarrow edgeTwoAngles(z3,z4,-35,35+180);

drawoptions(withcolor yellow);

% drawarrow edgeAngle(z0,z3,45);
% drawarrow edge(z1,z3);
% drawarrow edge(z2,z4);

path la,lb,lc,lx,ly;
la := edge(z0,z0);
lb := edge(z1,z1);
lc := edge(z2,z2);
lx := edge(z3,z3);
ly := edge(z4,z4);

pair ia,ib,ic,ix,iy;
ia := midpoint( la );
ib := midpoint( lb );
ic := midpoint( lc );
ix := midpoint( lx );
iy := midpoint( ly );

nodesize:= .5u;
drawoptions(withcolor yellow withpen pencircle scaled 1.3bp dashed evenly);

drawarrow edgeAngle(ia,ix,35);
drawarrow edgeAngle(ib,ix,20);
drawarrow edgeAngle(ic,iy,35);
