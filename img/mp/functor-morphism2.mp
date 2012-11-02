z0=(0,0); z1=(gu,0); z2=(.5gu,-.75gu);
drawState(z0,btex $A$ etex);
drawState(z1,btex $B$ etex);
drawState(z2,btex $C$ etex);


drawEdge(z0,z0,btex $id_A$ etex);
drawEdge(z1,z1,btex $id_B$ etex);
drawEdge(z2,z2,btex $id_C$ etex);

path f,g,h,i;
f:= edgeAngle(z0,z1,35);
g:= edgeAngle(z1,z0,-145);
h:= edgeTwoAngles(z1,z2,-90,180);
i:= edgeTwoAngles(z0,z2,-90,0);

drawarrow f;
drawarrow g;
drawarrow h;
drawarrow i;

drawoptions(withcolor blue);

z3=z0 shifted (2gu,0);
z4=z3 shifted (0,-.75gu);
drawState(z3,btex $X$ etex);
drawState(z4,btex $Y$ etex);
drawEdge(z3,z3,btex $id_X$ etex);
drawEdge(z4,z4,btex $id_Y$ etex);

path k;
k:= edgeTwoAngles(z3,z4,-35,35+180);
drawarrow  k;

drawoptions(withcolor yellow withpen pencircle scaled 1.3bp dashed evenly);

pair mf,mg,mh,mi,mk;
mf := midpoint(f);
mg := midpoint(g);
mh := midpoint(h);
mi := midpoint(i);
mk := midpoint(k);

path lx,ly;
lx := edge(z3,z3);
ly := edge(z4,z4);
pair ix,iy;
ix := midpoint( lx );

nodesize:= .5u;

drawarrow edgeAngle(mf,ix,45);
drawarrow edgeAngle(mg,ix,45);
drawarrow edgeAngle(mi,mk,15);
drawarrow edgeAngle(mh,mk,15);
