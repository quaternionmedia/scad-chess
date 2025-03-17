module king(scale=1,segments=64) {
    scale(scale/20)
    union () {
        rotate_extrude(convexity = 10, $fn = segments)
        import(file = "profiles/king_profile.svg", id="body");

        rotate([90, 0, 0])
        translate([0,0,-1.5]) linear_extrude(height = 3) {
        import(file = "profiles/king_profile.svg", id="cross");
        }

    }
}

king();
