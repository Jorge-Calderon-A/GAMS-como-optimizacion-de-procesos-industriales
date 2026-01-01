Variables
    x, y, z;

Positive Variables
    x, y;

Equations
    obj,
    c1,
    c2,
    c3;

obj .. z =e= 3*x + 5*y;
c1  .. x + y =l= 10;
c2  .. x =l= 6;
c3  .. y =l= 8;

Model ejemplo /all/;

Solve ejemplo using LP maximizing z;
Display x.l, y.l, z.l;