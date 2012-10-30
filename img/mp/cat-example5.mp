z0=origin;
z1=(gu,0);

drawState(z0,btex $A$ etex);
drawState(z1,btex $B$ etex);
drawEdgeWithAngle(z1,z0,btex $f$ etex,145);
drawEdge(z0,z1,btex $g$ etex);
drawEdgeWithAngle(z1,z0,btex $h$ etex,-145);
