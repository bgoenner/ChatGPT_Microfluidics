

/* 
	Supplemental Serpentine 2

*/

$fn = 100; // increase the smoothness of the cylinders

// Define the dimensions
channel_diameter = 0.7; // Diameter of the channel
long_length = 10; // Length of the longer segment
short_length = 3; // Length of the shorter segment

// Long segments
translate([0, 0, 0])
    cylinder(h=long_length, d=channel_diameter, center=true);

translate([0, -short_length, 0])
    rotate([0, 0, 180])
    cylinder(h=long_length, d=channel_diameter, center=true);

translate([0, -2*short_length, 0])
    cylinder(h=long_length, d=channel_diameter, center=true);

translate([0, -3*short_length, 0])
    rotate([0, 0, 180])
    cylinder(h=long_length, d=channel_diameter, center=true);

// Short segments
translate([long_length/2, -short_length/2, 0])
    rotate([0, 0, 90])
    cylinder(h=short_length, d=channel_diameter, center=true);

translate([long_length/2, -3*short_length/2, 0])
    rotate([0, 0, 90])
    cylinder(h=short_length, d=channel_diameter, center=true);

translate([long_length/2, -5*short_length/2, 0])
    rotate([0, 0, 90])
    cylinder(h=short_length, d=channel_diameter, center=true);
