
z0=(0,0);
z1=z0 shifted (2gu,0);

drawState(z0, btex $A$ etex);
drawState(z1, btex $B$ etex);

drawoptions(withcolor yellow);
drawEdge(z0,z1, btex $id_B\circ f = f = f \circ id_A$ etex);
drawEdge(z0,z0, btex $id_A$ etex);
drawEdge(z1,z1, btex $id_B$ etex);
