DefineConstant[ a = { 0.0002, Path "Gmsh/Parameters"}];
DefineConstant[ b = { 0.0002, Path "Gmsh/Parameters"}];
DefineConstant[ r_core = { 1e-05, Path "Gmsh/Parameters"}];
DefineConstant[ r_clad = { 2e-05, Path "Gmsh/Parameters"}];
Point(1) = {-a, -b, 0, 1.0};
Point(2) = {a, -b, 0, 1.0};
Point(3) = {a, b, 0, 1.0};
Point(4) = {-a, b, 0, 1.0};
Line(1) = {1, 2};
Line(2) = {2, 3};
Line(3) = {3, 4};
Line(4) = {4, 1};
Point(5) = {0, 0, 0, 1.0};
Point(6) = {r_core, 0, 0, 1.0};
Point(7) = {r_clad, 0, 0, 1.0};
Circle(5) = {6, 5, 6};
Circle(6) = {7, 5, 7};

Line Loop(7) = {4, 1, 2, 3};
Line Loop(8) = {6};
Plane Surface(9) = {7, 8};
Line Loop(10) = {5};
Plane Surface(11) = {8, 10};
Plane Surface(12) = {10};
