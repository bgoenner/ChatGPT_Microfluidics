

/* 
	Supplemental Helix/Spiral 12

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

turns = 5; // Number of turns in the spiral
pitch = 5; // Pitch of the spiral
radius = 10; // Radius of the spiral
diameter = 1.5; // Diameter of the pipe
hole_diameter = 2; // Diameter of the holes

cube_height = (turns - 1) * pitch + diameter + 5; // Calculate the height of the cube

difference() {
    %cube([33, 33, cube_height], center=true);
    union(){ //not in original code!
    translate([0, 0, -cube_height/2 + diameter/2]) spiral_pipe(turns, pitch, radius, diameter); 
    
    // Add the holes
    translate([10, 0, -cube_height/2]) cylinder(h=hole_diameter, r=hole_diameter/2, center=true);
    translate([10, 0, cube_height/2]) cylinder(h=hole_diameter, r=hole_diameter/2, center=true);
    }
}
