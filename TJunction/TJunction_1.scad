

/* 
	Supplemental T-Junction 1

*/

$fn = 100;  // Increase the resolution of the cylinders
pipe_radius = 5;
pipe_length = 50;

// Pipe along the x-axis
translate([0, 0, 0])
cylinder(h=pipe_length, r=pipe_radius, center=true);

// Pipe along the y-axis
rotate([0, 90, 0])
translate([0, 0, 0])
cylinder(h=pipe_length, r=pipe_radius, center=true);
