drawoptions(withcolor yellow);

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

drawState(z3, btex $D$ etex);
drawState(z4, btex $E$ etex);
draw z5 -- z6 dashed withdots withpen pencircle scaled 2bp;
