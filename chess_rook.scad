segments = 64;

scale(0.2)
rotate([0, 0, 0])
translate([0, 0, 0]) {

difference () {
    rotate_extrude(convexity = 10, $fn = segments) {
        scale(.25)
	import(file = "profiles/rook_profile.svg");
    }

    // Four cutouts

    translate([0, 0, 160]) {
      rotate([0, 0, 0])
        linear_extrude(height = 20) {
	    polygon( points=[[0,0],[60,30],[30,60]] );
        }
      rotate([0, 0, 90])
        linear_extrude(height = 20) {
	    polygon( points=[[0,0],[60,30],[30,60]] );
        }
      rotate([0, 0, 180])
        linear_extrude(height = 20) {
	    polygon( points=[[0,0],[60,30],[30,60]] );
        }
      rotate([0, 0, 270])
        linear_extrude(height = 20) {
	    polygon( points=[[0,0],[60,30],[30,60]] );
        }
    }

}

}
