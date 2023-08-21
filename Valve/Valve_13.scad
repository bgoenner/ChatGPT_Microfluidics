

/* 
	Supplemental Valve 13

*/

$fn = 100; // increase the smoothness of the cylinders

// Define the dimensions
chamber_diameter = 5; // Diameter of both chambers
membrane_thickness = 0.1; // 100 microns
fluid_chamber_height = 0.5; // Height of fluid chamber (500 microns)
pneumatic_chamber_height = 1; // Height of pneumatic chamber (1 mm)
port_diameter = 0.7; // Diameter of the ports
port_offset = 1; // Offset of the ports
port_height = 2; // Height of the ports
channel_length = 10; // Length of the routing channels
cube_size = 10; // Size of the subtracting cube

difference() {
    // Draw the subtracting cube
    %cube(cube_size, center=true);
    
    union() {
        // Draw the fluid chamber
        cylinder(h=fluid_chamber_height, d=chamber_diameter);

        // Draw the pneumatic chamber with membrane
        translate([0, 0, fluid_chamber_height + membrane_thickness])
            cylinder(h=pneumatic_chamber_height, d=chamber_diameter);

        // Draw the two offset ports at the bottom of the fluid chamber
        translate([port_offset, 0, -port_height])
            cylinder(h=port_height, d=port_diameter);

        translate([-port_offset, 0, -port_height])
            cylinder(h=port_height, d=port_diameter);

        // Draw the two offset ports at the top of the pneumatic chamber
        translate([0, port_offset, fluid_chamber_height + pneumatic_chamber_height + membrane_thickness])
            cylinder(h=port_height, d=port_diameter);

        translate([0, -port_offset, fluid_chamber_height + pneumatic_chamber_height + membrane_thickness])
            cylinder(h=port_height, d=port_diameter);

        // Add routing channels to the ends of the ports
        translate([port_offset + channel_length / 2 - port_diameter / 2, 0, -port_height])
            rotate([0, 90, 0])
            cylinder(h=channel_length, d=port_diameter, center=true);

        translate([-port_offset - channel_length / 2 + port_diameter / 2, 0, -port_height])
            rotate([0, 90, 0])
            cylinder(h=channel_length, d=port_diameter, center=true);

        translate([0, port_offset + channel_length / 2 - port_diameter / 2, fluid_chamber_height + pneumatic_chamber_height + membrane_thickness + port_height])
            rotate([90, 0, 0])
            cylinder(h=channel_length, d=port_diameter, center=true);

        translate([0, -port_offset - channel_length / 2 + port_diameter / 2, fluid_chamber_height + pneumatic_chamber_height + membrane_thickness + port_height])
            rotate([90, 0, 0])
            cylinder(h=channel_length, d=port_diameter, center=true);
    }
}
