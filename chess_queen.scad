segments = 64;

module queen() {
    scale(0.185) {
        union () {
            rotate_extrude(convexity = 10, $fn = segments) {
                scale(.25)
                import(file = "profiles/queen_profile.svg");
            }
            // Add the crown
            translate([0, 0, 210])
            scale([6.7, 6.7, 7.5])
            import(file = "queen_crown2.stl");
        }

    }
}

scale(.7) queen();