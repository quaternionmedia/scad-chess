segments = 64;

scale(0.05)
rotate([0, 0, 0])
translate([0, 0, 0]) {

translate([0, 0, 277])
union () {
    rotate_extrude(convexity = 10, $fn = segments) {
	import(file = "profiles/king_profile.svg");
    }
    translate([-100, 15, 1070])
    rotate([90, 0, 0])
    linear_extrude(height = 26) {
     //   scale(2)
	import(file = "profiles/cross_profile.svg");
    }
}

}
