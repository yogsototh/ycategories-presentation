z0=(0,0);
z1=2(u,0);
z2=2(2u,0);

drawarrow nl_edge(z0,z1);
drawarrow nl_edge(z1,z2);
drawarrow nl_edgeAngle(z0,z2,50);

drawstate(z0);
drawstate(z1);
drawstate(z2);
