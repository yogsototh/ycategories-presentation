z0=origin;
z1=(gu,0);

drawState(z0,"A");
drawState(z1,"B");
drawEdgeAngle(z1,z0,"f",145);
drawEdge(z0,z1,"g");
drawEdgeAngle(z1,z0,"h",-145);
drawEdge(z0,z0,"id_A");
drawEdge(z1,z1,"id_B");
