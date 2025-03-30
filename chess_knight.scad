/*
 * dfix is intended for cases with a small number of segments
 * TODO compute value automatically
 */
module knight(scale=1,segments=64,dfix=1) {
    scale(scale)
    rotate([0,0,-90])
    union () {
        rotate_extrude(convexity = 10, $fn = segments)
        import(file = "profiles/knight_profile.svg");

    // Import STL for the knight
	translate([0,0,8])
	scale([.47*dfix,.47*dfix,.47])
        translate([-2.6,-4,0])
        import(file = "profiles/horse3.stl");
    }
}

knight();
