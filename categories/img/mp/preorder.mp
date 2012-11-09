pair A,B,C,D;
A=(0,0);
B=A shifted (-1.5gu,0);
C=A shifted (1.5gu,0);
D=C shifted (1.5gu,0);

drawState(A, btex $A$ etex);
drawState(B, btex $B$ etex);
drawState(C, btex $C$ etex);
drawState(D, btex $D$ etex);

drawEdge(B,A,btex $A \leq B$ etex);
drawEdge(C,A,btex $A \leq C$ etex);
drawEdge(D,C,btex $C \leq D$ etex);
drawEdgeWithAngle(D,A,btex $A \leq D$ etex, -135);

drawEdge(A,A,btex $A \leq A$ etex);
drawEdge(B,B,btex $B \leq B$ etex);
drawEdge(C,C,btex $C \leq C$ etex);
drawEdge(D,D,btex $D \leq D$ etex);
