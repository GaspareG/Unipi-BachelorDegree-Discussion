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
    (0,0),
    (1,1),
    (2,2),

    (-1,-1),
    (-2,-2),

    (1,-1),
    (2,-2),

    (-1,1),
    (-2,2),

};

pair[] pos = {
    N, 
    NW, NW,
    SE, SE,
    SW, SW,
    NE, NE,
};

// colori dei vertici
pen[]  colV = {pb};

// archi del grafo
int[][] E = {
    {0, 1}, {1,2},
    {0, 3}, {3,4},
    {0, 5}, {5,6},
    {0, 7}, {7,8},
};

//MAP
int[] mappa = { 0, 1, 2, 3, 4, 5 };
// colori degli archi
pen[]  colE = {
    red+2, red+2,
    green+2, green+2,
    purple+2, purple+2,
    orange+2, orange+2,
};

// label 
string C[] = {"a","b","c","c","b","c","a","c","b"};

for (int i=0; i<9; ++i)
  label(C[i],P[i],4*pos[i]);

//for (int i=0; i<5; ++i)
//   filldraw(roundedpath(P[i]+(0.7,0.7)--P[i]+(-0.7,0.7)--P[i]+(-0.7,-0.7)--P[i]+(0.7,-0.7)--cycle,0.2), palegrey, grey+2);

// draw(ellipse((0,1),1,2.5), p3);
// label("S2",(-1.2,1),W,blue);

// draw(rotate(-35,(0.75,3))*ellipse((0.75,3),1,2.5), p4);
// label("S1",(0,4),W, red);

grafi.main(P, colV, E, colE);
