

/* 
	Supplemental T-Junction 6

*/

$fn = 100;  // Increase the resolution of the cylinders
pipe_radius = 5;
pipe_length = 50;

// Define the cube dimensions
cube_size = [pipe_length + 4 + 2*pipe_radius, 2*pipe_radius + 4, pipe_length + 4];

difference() {
    // Create the cube
    translate([0, 0, 0])
    cube(cube_size, center=true);

    // Subtract the x-axis pipe, shifted to the center of the new cube size
    translate([pipe_radius, 0, 0])
    cylinder(h=pipe_length, r=pipe_radius, center=true);

    // Subtract the y-axis pipe, shifted accordingly
    rotate([0, 90, 0])
    translate([pipe_radius, 0, -pipe_length/2])
    cylinder(h=pipe_length, r=pipe_radius, center=true);
}
