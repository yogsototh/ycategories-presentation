pair a,b;
a:=origin;
b:=a shifted (gu,0);

drawState(a,"a");
drawState(b,"b");
drawEdge(a,b,"f");

pair fa,fb;
fa=a shifted (0,-.6gu);
fb=b shifted (0,-.6gu);

drawbox(fa,"F");
drawState(fa,"a");
drawbox(fb,"F");
drawState(fb,"b");
drawEdge(fa,fb,"\mathtt{fmap} f");

pair mf,mff;
path ab,fafb;
ab  :=edge(a,b);
fafb:=edge(fa,fb);
mf := midpoint(ab);
mff := midpoint(fafb);
path arr;
arr = subpath (0,.5) of mf -- mff;
drawarrow arr withpen pencircle scaled 1 withcolor yellow;
