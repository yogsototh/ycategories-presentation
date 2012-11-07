z0=(0,0); z1=(4u,0); z2=(2u,-3u);
drawstate(z0); drawstate(z1); drawstate(z2);

drawarrow nl_edgeAngle(z0,z1,35);
drawarrow nl_edgeAngle(z1,z0,-145);
drawarrow nl_edge(z0,z2);
drawarrow nl_edge(z1,z2);
