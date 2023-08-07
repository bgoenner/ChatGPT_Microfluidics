

/* 
	Supplemental Valve 1

*/

$fn = 100; // increase the smoothness of the cylinders
 
// Define the dimensions
valve_diameter = 10; // Diameter of the valve
membrane_thickness = 0.1; // 100 microns
valve_height = 5; // Height of the valve
port_diameter = 2; // Diameter of the ports
port_offset = valve_diameter / 4; // Offset of the ports
 
// Draw the pneumatic chamber
cylinder(h=valve_height, d=valve_diameter);
 
// Draw the fluid chamber with membrane
translate([0, 0, -membrane_thickness])
    cylinder(h=valve_height + membrane_thickness, d=valve_diameter + 2 * membrane_thickness);
 
// Draw the two offset ports
translate([port_offset, 0, -membrane_thickness])
    cylinder(h=valve_height / 2, d=port_diameter);
 
translate([-port_offset, 0, -membrane_thickness])
    cylinder(h=valve_height / 2, d=port_diameter);
