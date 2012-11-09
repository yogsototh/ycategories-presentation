z0=(0,0); z1=3(u,0); z2=3(2u,0);
nodesize:=6bp;
drawstate(z0); drawstate(z1); drawstate(z2);

drawedge(z0,z1,btex $f$ etex);
drawedge(z1,z2,btex $g$ etex);

ahlength:=.3nodesize;
drawarrow edge(z0,z0);
drawarrow edge(z1,z1);
drawarrow edge(z2,z2);
