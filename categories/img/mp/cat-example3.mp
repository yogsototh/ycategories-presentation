z0=(0,0); z1=(4u,0); z2=(2u,-3u);
nodesize:=6bp;

drawarrow edgeAngle(z0,z1,35);
drawarrow edgeAngle(z1,z0,-145);
drawarrow edgeTwoAngles(z1,z2,-90,180);
drawarrow edgeTwoAngles(z0,z2,-90,0);

ahlength:=.3nodesize;
drawarrow edge(z0,z0);
drawarrow edge(z1,z1);
drawarrow edge(z2,z2);
drawstate(z0);
drawstate(z1);
drawstate(z2);
