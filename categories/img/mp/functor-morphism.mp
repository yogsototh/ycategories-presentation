z0=(0,0);
z1=(gu,0);
z2=(.5gu,-.75gu);
z3=z0 shifted (2gu,0);
z4=z3 shifted (0,-.75gu);

drawblock(z0,(xpart z1,ypart z2),btex $\mathcal{C}$ etex);
drawblock(z3,z4,btex $\mathcal{D}=\mathbf{F}(\mathcal{C})$ etex);

drawState(z0,btex $A$ etex);
drawState(z1,btex $B$ etex);
drawState(z2,btex $C$ etex);

drawState(z4,btex $Y$ etex);
drawState(z3,btex $X$ etex);


drawoptions(withcolor green withpen pencircle scaled 1);
drawEdge(z2,z2,btex $id_C$ etex);


drawoptions(withcolor magenta withpen pencircle scaled 1);
drawarrow edgeTwoAngles(z1,z2,-90,180);
drawarrow edgeTwoAngles(z0,z2,-90,0);
drawarrow edgeTwoAngles(z3,z4,-35,35+180);

drawoptions(withcolor blue withpen pencircle scaled 1);
drawEdge(z0,z0,btex $id_A$ etex);
drawEdge(z1,z1,btex $id_B$ etex);
drawarrow edgeAngle(z0,z1,35);
drawarrow edgeAngle(z1,z0,-145);
drawEdge(z3,z3,btex $id_X$ etex);

drawoptions(withcolor green withpen pencircle scaled 1);
drawEdge(z4,z4,btex $id_Y$ etex);

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
drawoptions(withcolor blue dashed evenly withpen pencircle scaled 1);

drawarrow edgeAngle(ia,ix,35);
drawarrow edgeAngle(ib,ix,20);

drawoptions(withcolor green dashed evenly withpen pencircle scaled 1);
drawarrow edgeAngle(ic,iy,0);

path f,g,h,i;
f:= edgeAngle(z0,z1,35);
g:= edgeAngle(z1,z0,-145);
h:= edgeTwoAngles(z1,z2,-90,180);
i:= edgeTwoAngles(z0,z2,-90,0);

path k;
k:= edgeTwoAngles(z3,z4,-35,35+180);

pair mf,mg,mh,mi,mk;
mf := midpoint(f);
mg := midpoint(g);
mh := midpoint(h);
mi := midpoint(i);
mk := midpoint(k);

nodesize:= .5u;

drawoptions(withcolor blue dashed evenly withpen pencircle scaled 1);
drawarrow edgeAngle(mf,ix,35);
drawarrow edgeAngle(mg,ix,-15);
drawoptions(withcolor magenta dashed evenly withpen pencircle scaled 1);
drawarrow edgeAngle(mi,mk,15);
drawarrow edgeAngle(mh,mk,15);
