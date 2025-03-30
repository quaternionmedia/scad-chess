module king(scale=1,segments=64) {
    scale(scale) union () {
        rotate_extrude(convexity = 10, $fn = segments)
        import(file = "profiles/king_profile_body.svg");

        rotate([90, 0, 0])
        translate([0,0,-1.5]) linear_extrude(height = 3) {
        import(file = "profiles/king_profile_cross.svg");
        }

    }
}

king();
