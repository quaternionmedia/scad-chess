segments = 64;

module king() {
    scale(0.2) {
    union () {
        rotate_extrude(convexity = 10, $fn = segments) {
          scale(.25)
          import(file = "profiles/king_profile.svg");
        }
        translate([-24, 10, 269])
        rotate([90, 0, 0])
        linear_extrude(height = 20) {
         scale(.25)
        import(file = "profiles/cross_profile.svg");
        }
    }

    }
}

king();