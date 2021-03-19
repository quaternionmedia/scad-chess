segments = 64;

scale(0.185) {
    union () {
        rotate_extrude(convexity = 10, $fn = segments) {
            scale(.25)
            import(file = "profiles/queen_profile.svg");
        }
        // Add the crown
        translate([0, 0, 219])
        scale(6.7)
        import(file = "queen_crown2.stl");
    }

}
