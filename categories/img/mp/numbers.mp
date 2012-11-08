z0=(0,0);
drawblock(z0,z0,btex $0$ etex);

z1=(gu,0);

drawblock(z1,z1,btex $1$ etex);
drawState(z1, btex $0$ etex);
drawEdge(z1,z1, btex $id_0$ etex);

z2=z1 shifted (gu,0);
z3=z2 shifted (gu,0);

drawblock(z2,z3,btex $2$ etex);

drawState(z2, btex $0$ etex);
drawState(z3, btex $1$ etex);
drawEdge(z2,z2, btex $id_0$ etex);
drawEdge(z3,z3, btex $id_1$ etex);
drawarrow edge(z2,z3);
