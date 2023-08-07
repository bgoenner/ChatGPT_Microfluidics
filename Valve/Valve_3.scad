

/* 
	Supplemental Valve 3

*/

$fn = 100; // increase the smoothness of the cylinders

// Define the dimensions
chamber_diameter = 2; // Diameter of both chambers
membrane_thickness = 0.1; // 100 microns
chamber_height = 1; // Height of each chamber
port_diameter = 2; // Diameter of the ports
port_height = 2; // Height of the ports

// Draw the fluid chamber
cylinder(h=chamber_height, d=chamber_diameter);

// Draw the pneumatic chamber with membrane
translate([0, 0, chamber_height + membrane_thickness])
    cylinder(h=chamber_height, d=chamber_diameter);

// Draw the two offset ports
translate([port_height, 0, 0])
    cylinder(h=chamber_height, d=port_diameter);

translate([-port_height, 0, 0])
    cylinder(h=chamber_height, d=port_diameter);
