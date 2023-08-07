
/* 
	Supplemental Helix/Spiral 2

	This code returns an error
*/

$fn = 100; // For smoother curves

module spiral_pipe(turns, pitch, radius, diameter) {
    for (i = [0:5:turns*360]) { // step size 5 degrees
        rotate([0, 0, i]) {
            translate([radius, 0, i*pitch/360]) {
                cylinder(h=pitch*5/360, r=diameter/2, center=true);
            }
        }
    }
}

spiral_pipe(10, 1, 10, 1.5);
