pair int,bool,func,intlist,list;
resize(.8cm);
int=origin;
% drawoptions (withcolor baseOne withpen pencircle scaled 1.2);

intlist=int shifted (gu,0);
func=int shifted (0,-.6gu);
bool=func shifted (gu,0);
list=func shifted (2u,0);

drawState(int,"\mathtt{Int}");
drawState(bool,"\mathtt{Bool}");
drawState(func,"\mathtt{a\rightarrow b}");
drawState(intlist,"\mathtt{[Int]}");
drawState(list,"\mathtt{[a]}");

drawLoopPoint(int,int shifted (0,1.6u),"\mathtt{sqrt}");
drawEdge(int,int,"\mathtt{id}");
drawEdgeAngle(int,bool,"\mathtt{odd}",-30);
drawEdgeAngle(int,bool,"\mathtt{even}",30);
drawEdge(intlist,intlist,"\mathtt{tail}");
drawEdge(intlist,int,"\mathtt{head}");

pair decal;
pair fint,fbool,ffunc,fintlist,flist;
decal := (1.7gu,0);
fint=int shifted decal;
fintlist=intlist shifted decal;
ffunc=   func shifted decal;
fbool=   bool shifted decal;
flist=   list shifted decal;

drawState(fint,"\mathtt{F\ Int}");
drawState(fbool,"\mathtt{F\ Bool}");
drawState(ffunc,"\mathtt{F\ a\rightarrow b}");
drawState(fintlist,"\mathtt{F\ [Int]}");
drawState(flist,"\mathtt{F\ [a]}");

drawLoopPoint(fint,fint shifted (0,1.6u),"\mathtt{sqrt}");
drawEdge(fint,fint,"\mathtt{id}");
drawEdgeAngle(fint,fbool,"\mathtt{odd}",-30);
drawEdgeAngle(fint,fbool,"\mathtt{even}",30);
drawEdge(fintlist,fintlist,"\mathtt{tail}");
drawEdge(intlist,int,"\mathtt{head}");

drawblock(fint,fbool,"\mathtt{F}");

pair ff;
ff = .5[fint,fintlist] shifted (0,u);
path b;
b := block(origin,origin);
draw b scaled .5 shifted ff;
label.top(btex $\mathtt{F\ F}$ etex, blockLabelPosition(b)) scaled .5 shifted ff;
draw b scaled .25 shifted ff;
label.top(btex $\mathtt{F\ F\ F}$ etex, blockLabelPosition(b)) scaled .25 shifted ff;

drawoptions(withcolor yellow withpen pencircle scaled 1 dashed evenly);
drawarrow edgeAngle(int,fint,45);
drawoptions(withcolor green withpen pencircle scaled 1 dashed evenly);
drawarrow edgeAngle(intlist,fintlist,-20);
drawoptions(withcolor blue withpen pencircle scaled 1 dashed evenly);
drawarrow edgeAngle(func,ffunc,-25);
drawoptions(withcolor red withpen pencircle scaled 1 dashed evenly);
drawarrow edgeAngle(list,flist,25);
drawoptions(withcolor orange withpen pencircle scaled 1 dashed evenly);
drawarrow edgeAngle(bool,fbool,-25);
