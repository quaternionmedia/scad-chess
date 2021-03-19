segments = 64;

module bishop() {
    translate([0, 0, 34])
    scale(0.2) {

    translate([0, 0, 54])
    difference () {
        rotate_extrude(convexity = 10, $fn = segments) {
        import(file = "profiles/bishop_profile.dxf");
        }
        translate([-30, 0, 0])
        rotate([0, -45, 0])
        cube([10, 80, 80], center = true);
    }

    }
}

bishop();