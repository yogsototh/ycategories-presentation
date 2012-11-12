pair a,b,c,d,pos;
string l;

a := origin;
b = a shifted (gu,0);
c = .5[a,b] shifted (0,-gu);

drawState(a,"A \alpha \gamma \beta");
drawState(b,"\beta");
drawState(c,"\gamma");

drawEdge(a,b,"f");
drawEdgeAngle(a,b,"g",-35);
drawEdgeFull(a,c,"\lambda",-90,0);
drawEdge(c,c,"id_\alpha");
