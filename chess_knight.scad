module knight(scale,segments=64) {
    scale(scale/20)
    rotate([0,0,-90])
    union () {
        rotate_extrude(convexity = 10, $fn = 64)
        import(file = "profiles/knight_profile.svg");

        // Import STL for the knight
	translate([0,0,8])
	scale(.47)
        translate([-2.6,-4,0])
        import(file = "horse3.stl");
    }
}

knight();
