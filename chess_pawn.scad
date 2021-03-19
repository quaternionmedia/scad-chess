segments = 64;

scale(0.2)
rotate([0, 0, 0])
translate([0, 0, 0]) {

translate([0, 0, 140])
    rotate_extrude(convexity = 10, $fn = segments) {
	import_dxf(file = "pawn_profile.dxf");
    }

}
