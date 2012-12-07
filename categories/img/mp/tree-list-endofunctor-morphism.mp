pair tree,list;
resize(.8cm);
list=origin;
tree=list shifted (gu,0);
drawState(list,"\mathtt{[]}");
drawState(tree,"\mathtt{Tree}");
drawEdgeAngle(list,tree,"\mathtt{toTree}",30);
drawoptions(withcolor yellow);
drawEdgeAngle(tree,list,"\mathtt{toList}",30);
