import graph;

// picture pic;
real xsize=160*2.5, ysize=90*2.5;

scale(Log,Log);
size(xsize,ysize,IgnoreAspect);

// scale(Linear,Log);
pair[] f3={
     (3, 684342),
     (6, 684342/2),
    (12, 684342/4),
    (24, 684342/8),
//     (3, 105943*2*2*2),
//     (6, 105943*2*2),
//    (12, 105943*2),
//    (24, 105943),
};

draw(graph(f3),"", marker(scale(1.5mm)*polygon(3),grey,FillDraw(grey),above=false));

pair[] f3={
     (3, 224815),
     (6, 224815/2),
    (12, 224815/4),
    (24, 224815/8),
};

draw(graph(f3),"", marker(scale(1.5mm)*polygon(4),grey,FillDraw(grey),above=false));


// scale(Linear,Log);
pair[] f={
    (3, 224815),
    (6, 139107),
    (12, 83271),
    (24, 48220),
};

//scale(Linear,Log);
draw(graph(f),"$\textsc{IMDB}$ q=3", marker(scale(1.5mm)*polygon(5),green,FillDraw(green),above=false));


// frame mark;
// filldraw(mark,scale(0.8mm)*polygon(6),green,green);
// draw(mark,scale(0.8mm)*cross(6),blue);

pair[] f2={
     (3, 684342),
     (6, 353856),
    (12, 190719),
    (24, 105943),
};

//scale(Linear,Log);
draw(graph(f2),"$\textsc{IMDB}$ q=4", marker(scale(1.5mm)*polygon(4),red,FillDraw(red),above=false));

xaxis("Cores",BottomTop,LeftTicks(DefaultFormat,new real[] {3, 6, 12, 24}));

//scale(Linear,Log);

yaxis("Time",LeftRight,RightTicks(DefaultFormat, new real[] { 100000, 200000, 500000, 1000000, 2000000 } ));

add(currentpicture, legend(),point(NE),15SW,UnFill);

// Fit pic to W of origin:
//scale(Linear,Log);

// add(pic.fit(),(0,0),W);
