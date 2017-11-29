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
    (1.5,0),
    (3, 0),

    (0  ,1),
    (1.5,1),
    (3  ,1),

    (0  ,2),
    (1.5,2),
    (3  ,2),

    (0  ,3),
    (1.5,3),
    (3  ,3),

    (0  ,4),
    (1.5,4),
    (3  ,4),

    (0  ,5),
    (1.5,5),
    (3  ,5),
/*
    (0  ,6),
    (1.5,6),
    (3  ,6),

    (0  ,7),
    (1.5,7),
    (3  ,7),

    (0  ,8),
    (1.5,8),
    (3  ,8),

    (0  ,9),
    (1.5,9),
    (3  ,9),
*/
};

pair[] pos = {
	SW, NW, SE, NE, S
};

// colori dei vertici
pen[]  colV = {
    red, green, lightblue,
    green, lightblue, red,
    lightblue, red, green,

    red, lightblue, lightblue,
    green, red, green,
    lightblue, lightblue, green,
/*
    red, red, red,
    red, red, red,
    red, red, red,

*/
};

// archi del grafo
int[][] E = {
    {0, 1}, {1, 2},
    { 3, 4}, {4, 5},
    { 6, 7}, {7, 8},

    { 9, 10}, {10, 11},
    {12, 13}, {13, 14},
    {15, 16}, {16, 17},

/*    {18, 19}, {19, 20},
    {21, 22}, {22, 23},
    {24, 25}, {25, 26},
    {27, 28}, {28, 29}*/

};

// colori degli archi
pen[]  colE = {p1};

grafi.main(P, colV, E, colE);

draw((3.4,2.6)--(-0.4,5.4));
draw((-0.4,2.6)--(3.4,5.4));
