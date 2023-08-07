

/* 
	Supplemental 2D design SCAD 3

*/

$fn=100; // Set resolution for circles

module spiral(n, radius, spacing) {
    if (n > 0) {
        translate([spacing * n, 0, 0]) {
            circle(r=radius);
        }
        rotate([0,0,2]) { // Reduce rotation degree for more spirals.
            spiral(n - 1, radius, spacing);
        }
    }
}

spiral(500, 2, 0.1); //500 circles, radius 2, spacing 0.1
