

/* 
	Supplemental Serpentine 1

*/

$fn = 100; // increase the smoothness of the cylinders

// Define the dimensions
channel_diameter = 0.7; // Diameter of the channel
long_length = 10; // Length of the longer segment
short_length = 3; // Length of the shorter segment

for (i=[0:3]) {
    // Draw the longer segments
    translate([long_length * i, 0, 0])
        cylinder(h=channel_diameter, d=channel_diameter, center=true);

    // Draw the shorter segments
    if (i < 3) {
        translate([long_length * i + long_length / 2, short_length / 2, 0])
            rotate([0, 0, 90])
            cylinder(h=short_length, d=channel_diameter, center=true);
    }
}
