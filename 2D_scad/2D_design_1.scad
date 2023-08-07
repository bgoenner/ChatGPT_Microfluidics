

/* 
	Supplemental 2D design SCAD 1

*/

module spiral(n, radius, spacing) {
    if (n > 0) {
        translate([spacing * n, 0, 0]) {
            circle(r=radius);
        }
        rotate([0,0,5]) { // Rotation degree for spiral effect.
            spiral(n - 1, radius, spacing);
        }
    }
}

spiral(200, 2, 0.2); //200 circles, radius 2, spacing 0.2
