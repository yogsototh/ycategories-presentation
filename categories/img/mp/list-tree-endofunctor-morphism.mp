pair tree,list;
resize(.8cm);
list=origin;
tree=list shifted (gu,0);
drawState(list,"\mathtt{[]}");
drawState(tree,"\mathtt{Tree}");
drawEdgeAngle(list,tree,"\mathtt{toTree}",30);
