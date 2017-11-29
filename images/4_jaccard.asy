size(16cm,0);
import math;
import graph;
real r,s;
pair a,b, common;
path circ1, circ2;
r=1; s=2;
a=(0,0);
b=(2,0);
circ1=circle(a,r);
circ2=circle(b,s);

fill(circ1,linewidth(1bp));
fill(circ2,1bp+blue);

common=intersectionpoint(circ1,circ2);

draw(common,5bp+orange);
