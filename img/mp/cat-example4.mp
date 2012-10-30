z0=(0,0); z1=(gu,0); z2=(.5gu,-.75gu);
drawState(z0,btex $A$ etex);
drawState(z1,btex $B$ etex);
drawState(z2,btex $C$ etex);

drawarrow edgeAngle(z0,z1,35);
drawarrow edgeAngle(z1,z0,-145);
drawarrow edge(z1,z2);
drawarrow edge(z2,z0);
