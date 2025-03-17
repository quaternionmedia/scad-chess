module bishop(scale=1,segments=64) {
    scale(scale/20)
    rotate([0,0,-90])
    difference () {
        rotate_extrude(convexity = 10, $fn = segments)
        import(file = "profiles/bishop_profile.svg", id="body");

        translate([9, 0, 34])
        rotate([0, 60, 0])
        cube([2, 20, 20], center = true);
    }
}

bishop();
