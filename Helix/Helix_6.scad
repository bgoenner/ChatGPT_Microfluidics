

/* 
	Supplemental Helix/Spiral 6

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
    %cube([33, 33, 52], center=true);
    union(){ // not in original code
    translate([0, 0, -26 + 1.5/2]) spiral_pipe(5, 5, 10, 1.5); // Decrease the number of turns to 5
    
    // Add the holes
    translate([0, 0, -26]) cylinder(h=2, r=1, center=true);
    translate([0, 0, 26]) cylinder(h=2, r=1, center=true);
    }
}
