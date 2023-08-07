

/* 
	Supplemental Valve 12

*/

$fn = 100; // increase the smoothness of the cylinders

// Define the dimensions
channel_diameter = 0.7; // Diameter of the channel
long_length = 10; // Length of the longer segment
short_length = 3; // Length of the shorter segment
extension_length = 4; // Additional length for the first and last segments

// Define the dimensions of the cube
cube_width = 16;
cube_length = 20;
cube_height = 5;

// Start with the cube
difference() {
    translate([0, -cube_length/2, 0]) // Center the cube on the y-axis
        cube([cube_width, cube_length, cube_height], center=true);

    // Combine all the cylinders into a single object
    union() {
        // Long segments
        translate([-extension_length/2, 0, 0])
            rotate([0, 90, 0])
            cylinder(h=long_length + extension_length, d=channel_diameter, center=true);

        translate([0, -short_length, 0])
            rotate([0, 90, 0])
            cylinder(h=long_length, d=channel_diameter, center=true);

        translate([0, -2*short_length, 0])
            rotate([0, 90, 0])
            cylinder(h=long_length, d=channel_diameter, center=true);

        translate([0, -3*short_length, 0])
            rotate([0, 90, 0])
            cylinder(h=long_length, d=channel_diameter, center=true);

        translate([0, -4*short_length, 0])
            rotate([0, 90, 0])
            cylinder(h=long_length, d=channel_diameter, center=true);

        translate([-extension_length/2, -5*short_length, 0])
            rotate([0, 90, 0])
            cylinder(h=long_length + extension_length, d=channel_diameter, center=true);

        // Short segments
        translate([long_length/2 - channel_diameter/2, -short_length/2, 0])
            rotate([90, 0, 0])
            cylinder(h=short_length, d=channel_diameter, center=true);

        translate([-long_length/2 + channel_diameter/2, -3*short_length/2, 0])
            rotate([90, 0, 0])
            cylinder(h=short_length, d=channel_diameter, center=true);

        translate([long_length/2 - channel_diameter/2, -5*short_length/2, 0])
            rotate([90, 0, 0])
            cylinder(h=short_length, d=channel_diameter, center=true);

        translate([-long_length/2 + channel_diameter/2, -7*short_length/2, 0])
            rotate([90, 0, 0])
            cylinder(h=short_length, d=channel_diameter, center=true);

        translate([long_length/2 - channel_diameter/2, -9*short_length/2, 0])
            rotate([90, 0, 0])
            cylinder(h=short_length, d=channel_diameter, center=true);
    }
}
