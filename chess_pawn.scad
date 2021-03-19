segments = 64;

module pawn() {
    translate([0, 0, -28])
    scale(0.2) {

        translate([0, 0, 140])
        rotate_extrude(convexity = 10, $fn = segments) {
            scale(.25)
            import(file = "profiles/pawn_profile.svg");
        }

    }
}

pawn();