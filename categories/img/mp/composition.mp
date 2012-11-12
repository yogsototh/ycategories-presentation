
z0=(0,0);
z1=z0 shifted (gu,0);

z2=z0 shifted (2gu,0);
z3=z1 shifted (2gu,0);

z4=(0.5gu,-.5gu);
z5=(1.5gu,-.5gu);
z6=(2.5gu,-.5gu);

drawState(z0, "A");
drawState(z1, "B");


drawState(z2, "B");
drawState(z3, "C");

drawState(z4, "A");
drawState(z5, "B");
drawState(z6, "C");


drawoptions(withcolor red);
drawEdge(z0,z1, "f");
drawEdge(z4,z5, "f");

drawoptions(withcolor blue);
drawEdge(z2,z3, "g");
drawEdge(z5,z6, "g");


drawoptions(withcolor yellow);
drawEdgeAngle(z4,z6, "g\circ f", -30);

