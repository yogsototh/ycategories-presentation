pair A,B,C,D;
A=(0,0);
B=A shifted (.7gu,1/2gu);
C=A shifted (.7gu,-1/2gu);
D=C shifted (.7gu,0);

drawState(A, btex $A$ etex);
drawState(B, btex $B$ etex);
drawState(C, btex $C$ etex);
drawState(D, btex $D$ etex);

drawEdge(A,A,btex $id_A$ etex);
drawEdge(B,B,btex $id_B$ etex);
drawEdge(C,C,btex $id_C$ etex);
drawEdge(D,D,btex $id_D$ etex);
