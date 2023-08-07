
/* 
	Supplemental Helix/Spiral 1

	This code returns an error
*/

$fn = 100; // For smoother curves

module spiral_pipe(turns, pitch, radius, diameter) {
    for (i = [0:0.1:turns*360]) { // step size 0.1 degrees
        rotate([0, 0, i]) {
            translate([radius, 0, i*pitch/360]) {
                cylinder(h=diameter, r=diameter/2, center=true);
            }
        }
    }
}

spiral_pipe(10, 1, 10, 1.5);
