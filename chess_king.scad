segments = 64;

module king() {
    scale(0.2) {
    union () {
        rotate_extrude(convexity = 10, $fn = segments) {
          scale(.25)
          import(file = "profiles/king_profile.svg");
        }
        translate([-21, 8, 270])
        rotate([90, 0, 0])
        linear_extrude(height = 16) {
         scale(.22)
        import(file = "profiles/cross_profile.svg");
        }
    }

    }
}

scale(.7) king();