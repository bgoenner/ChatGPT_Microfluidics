

/* 
	Supplemental T-Junction 7

*/

$fn = 100;  // Increase the resolution of the cylinders
pipe_radius = 5;
pipe_length = 50;

// Define the cube dimensions
cube_size = [pipe_length + 4, 2*pipe_radius + 4, pipe_length/2 + pipe_radius + 4];

difference() {
    // Create the cube
    translate([0, 0, 0])
    cube(cube_size, center=true);

    // Subtract the x-axis pipe
    translate([0, 0, 0])
    cylinder(h=pipe_length, r=pipe_radius, center=true);

    // Subtract the y-axis pipe
    rotate([0, 90, 0])
    translate([0, 0, -pipe_length/2])
    cylinder(h=pipe_length, r=pipe_radius, center=true);
}
