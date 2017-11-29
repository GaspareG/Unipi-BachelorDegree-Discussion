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
    (2.5,0),
    (2.5, 2),
    (0, 2),

    (1.25, 1),
    (1.25, 2.6),
    (1.25, -0.6),

};

pair[] pos = {
	SW, NW, SE, NE, S
};

// colori dei vertici
pen[]  colV = {
    red, green, lightblue,
    green, red, red,
    lightblue

/*
    red, red, red,
    red, red, red,
    red, red, red,

*/
};

// archi del grafo
int[][] E = {
    {0, 6},
    {1, 6},
    {1, 2},
    {2, 5},
    {5, 3},
    {0, 3},
    {3, 4},
    {4, 6},
    {3, 4},

    {3, 2},
    {2, 4},
    {4, 1},


};

// colori degli archi
pen[]  colE = {p1};

grafi.main(P, colV, E, colE);

