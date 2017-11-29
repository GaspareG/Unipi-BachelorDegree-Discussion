import "grafi.asy" as grafi;
import roundedpath;

pen pa = 0.6*rgb(130/255.0, 82/255.0, 1/255.0)+0.4*white;
//pen pb = 0.5*rgb(112/255.0, 141/255.0, 19/255.0)+0.5*white;
pen pb = lightgrey;
pen p1 = black+1;
//pen p2 = heavyred+1+dashed;
pen p2 = black+1;
pen p3 = blue+1+dashed;
pen p4 = red+1+dashed;

pen c1 = red;
pen c2 = cyan;
pen c3 = green;

// posizioni dei vertici
pair[] P = {
    (0,0.2),

    (1.5,0.2),

    (2.5,1),
    (4,1.5),
    (3,2.5),

    (-1,-0.6),
    (-2,-1.2),

    (-1,1),
    (-2,2),

    (2.5,-0.6),
    (3.5,-1.2),
    (1.5,-1.2),
};

pair[] pos = {
    N, 
    N, 

    N,
    N, N,

    N, N,

    N, N,
    N, N,
    N
};

// colori dei vertici
pen[]  colV = {pb};

// archi del grafo
int[][] E = {
    {1, 2},
    {2, 4},
    {2, 3},
    {1, 9},
    {9, 10},

    {0, 7},
    {0, 5},
    {5, 6},
    {7, 8},
    {9, 11},

};

//MAP
int[] mappa = { 0, 1, 2, 3, 4, 5 };
// colori degli archi
pen[]  colE = {
    grey+1,
//    red+1, red+1,
//    green+1, green+1,
//    purple+1, purple+1,
//    orange+1, orange+1,
};

// label 
string C[] = {"a","a","b","c","b","b","b","c","b","b","b","c"};

for (int i=0; i<12; ++i)
  label(C[i],P[i],4*pos[i]);

//for (int i=0; i<5; ++i)
//   filldraw(roundedpath(P[i]+(0.7,0.7)--P[i]+(-0.7,0.7)--P[i]+(-0.7,-0.7)--P[i]+(0.7,-0.7)--cycle,0.2), palegrey, grey+2);

draw(ellipse((.75,0.35),1.4,.9), p3);
label("X",(.75,1.2),N,blue);

// draw(rotate(-35,(0.75,))*ellipse((0.75,3),1,2.5), p4);
// label("S1",(0,4),W, red);

grafi.main(P, colV, E, colE);
