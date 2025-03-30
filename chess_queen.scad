module queen(scale=1,segments=64,rfix=15) {
    scale(scale)
        union () {
            rotate_extrude(convexity = 10, $fn = segments)
            import(file = "profiles/queen_profile.svg");

            // Add the crown
            translate([0, 0, 30.5])
	    rotate([0,0,rfix])
            scale(0.9) import(file = "queen_crown2.stl");
        }
}

queen();
