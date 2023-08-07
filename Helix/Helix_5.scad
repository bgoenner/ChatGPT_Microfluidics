

/* 
	Supplemental Helix/Spiral 5

*/

$fn = 100; // For smoother curves

module spiral_pipe(turns, pitch, radius, diameter) {
    for (i = [0:5:turns*360]) { // step size 5 degrees
        rotate([0, 0, i]) {
            translate([radius, 0, i*pitch/360]) {
                rotate([90, 0, 0]) {
                    cylinder(h=diameter, r=diameter/2);
                }
            }
        }
    }
}

difference() {
    cube([33, 33, 52], center=true);
    translate([0, 0, -26 + 1.5/2]) spiral_pipe(10, 5, 10, 1.5); // Increase the pitch to 5 units
}
